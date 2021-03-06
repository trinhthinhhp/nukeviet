<!-- BEGIN: main -->
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/jquery/jquery.validate.min.js"></script>
<script type="text/javascript" src="{NV_BASE_SITEURL}{NV_ASSETS_DIR}/js/language/jquery.validator-{NV_LANG_INTERFACE}.js"></script>

<div class="page panel panel-default">
    <div class="panel-body">
        <h3 class="margin-bottom-lg">{LANG.login}</h3>
        <form id="loginForm" action="{USER_LOGIN}" method="post" role="form" class="form-horizontal form-tooltip m-bottom">
            <div class="margin-bottom-lg">{LANG.login_info}</div>
            	<div class="form-group">
            		<label for="login_iavim" class="col-sm-6 control-label">{LANG.account}</label>
            		<div class="col-sm-18">
            			<input type="text" id="login_iavim" name="nv_login" value="{DATA.nv_login}" class="required form-control" />
            		</div>
            	</div>
        	<div class="form-group">
        		<label for="password_iavim" class="col-sm-6 control-label">{LANG.password}</label>
        		<div class="col-sm-18">
        			<input type="password" id="password_iavim" name="nv_password" value="{DATA.nv_password}" class="required form-control password" />
        		</div>
        	</div>
        	<!-- BEGIN: captcha -->
        	<div class="form-group">
        		<div class="col-sm-offset-6 col-sm-18">
        			<img class="captchaImg" alt="{N_CAPTCHA}" src="{SRC_CAPTCHA}" width="{GFX_WIDTH}" height="{GFX_HEIGHT}" />
        			&nbsp;<em class="fa fa-pointer fa-refresh fa-lg" onclick="change_captcha('#seccode_iavim');">&nbsp;</em>
        		</div>
        	</div>
        	<div class="form-group">
        		<label for="seccode_iavim" class="col-sm-6 control-label">{LANG.retype_captcha}</label>
        		<div class="col-sm-18">
        			<input type="text" name="nv_seccode" id="seccode_iavim" class="required form-control" maxlength="{GFX_MAXLENGTH}" />
        		</div>
        	</div>
        	<!-- END: captcha -->
        	<div class="form-group">
        		<div class="col-sm-offset-6 col-sm-18">
        			<input name="nv_redirect" value="{DATA.nv_redirect}" type="hidden" />
        			<input name="nv_header" value="{DATA.nv_header}" type="hidden" />
        			<input type="submit" value="{LANG.login_submit}" class="btn btn-primary" />
        		</div>
        	</div>
        	<div class="form-group">
        		<div class="col-sm-offset-6 col-sm-18">
        			<a title="{LANG.register}" href="{USER_REGISTER}">{LANG.register}</a> - <a title="{LANG.lostpass}" href="{USER_LOSTPASS}">{LANG.lostpass}</a>
        		</div>
        	</div>
        	<!-- BEGIN: openid -->
        	<div class="text-center">
        		<img alt="{LANG.openid_login}" src="{OPENID_IMG_SRC}" width="{OPENID_IMG_WIDTH}" height="{OPENID_IMG_HEIGHT}" />
        		<div class="m-bottom">
        			{DATA.openid_info}
        		</div>
        		<!-- BEGIN: server -->
        		<a href="{OPENID.href}" title="{OPENID.title}"> <img alt="{OPENID.title}" src="{OPENID.img_src}" width="{OPENID.img_width}" height="{OPENID.img_height}" data-toggle="tooltip" data-placement="top" title="{OPENID.title}"/> </a>
        		<!-- END: server -->
        	</div>
        	<!-- END: openid -->
        </form>
    </div>
</div>
<script type="text/javascript">
$(function() {
	$.validator.setDefaults({
    	highlight: function(a) {
    		$(a).closest(".form-group").addClass("has-error")
    	},
    	unhighlight: function(a) {
    		$(a).closest(".form-group").removeClass("has-error")
    	},
    	errorElement: "span",
    	errorClass: "help-block",
    	errorPlacement: function(a, b) {
    		b.parent(".input-group").length ? a.insertAfter(b.parent()) : b.parent(".radio-inline").length ? a.insertAfter(b.parent().parent()) : a.insertAfter(b)
    	}
    });
	$("#loginForm").validate()
});
</script>
<!-- END: main -->