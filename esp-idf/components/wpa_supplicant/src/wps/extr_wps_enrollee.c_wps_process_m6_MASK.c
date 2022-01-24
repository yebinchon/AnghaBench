#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wps_parse_attr {int /*<<< orphan*/  r_snonce2; int /*<<< orphan*/  key_wrap_auth; int /*<<< orphan*/ * version2; int /*<<< orphan*/  encr_settings_len; int /*<<< orphan*/  encr_settings; int /*<<< orphan*/  authenticator; int /*<<< orphan*/  enrollee_nonce; } ;
struct wps_data {scalar_t__ state; TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {int /*<<< orphan*/  cb_ctx; int /*<<< orphan*/  (* event_cb ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ RECV_M6 ; 
 scalar_t__ SEND_M7 ; 
 void* SEND_WSC_NACK ; 
 int WPS_CONTINUE ; 
 int /*<<< orphan*/  WPS_EV_AP_PIN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct wps_parse_attr*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 struct wpabuf* FUNC5 (struct wps_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct wpabuf*,struct wps_parse_attr*) ; 
 scalar_t__ FUNC7 (struct wps_data*,int /*<<< orphan*/ ,struct wpabuf const*) ; 
 scalar_t__ FUNC8 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct wps_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum wps_process_res FUNC12(struct wps_data *wps,
					   const struct wpabuf *msg,
					   struct wps_parse_attr *attr)
{
	struct wpabuf *decrypted;
	struct wps_parse_attr *eattr;
	enum wps_process_res res;

	FUNC3(MSG_DEBUG,  "WPS: Received M6");

	eattr = (struct wps_parse_attr *)FUNC1(sizeof(struct wps_parse_attr));
        if (eattr == NULL) {
		wps->state = SEND_WSC_NACK;
		res = WPS_CONTINUE;
		goto _out;
	}

	if (wps->state != RECV_M6) {
		FUNC3(MSG_DEBUG,  "WPS: Unexpected state (%d) for "
			   "receiving M6", wps->state);
		wps->state = SEND_WSC_NACK;
		res = WPS_CONTINUE;
		goto _out;
	}

	if (FUNC8(wps, attr->enrollee_nonce) ||
	    FUNC7(wps, attr->authenticator, msg)) {
		wps->state = SEND_WSC_NACK;
		res = WPS_CONTINUE;
		goto _out;
	}

	decrypted = FUNC5(wps, attr->encr_settings,
					      attr->encr_settings_len);
	if (decrypted == NULL) {
		FUNC3(MSG_DEBUG,  "WPS: Failed to decrypted Encrypted "
			   "Settings attribute");
		wps->state = SEND_WSC_NACK;
		res = WPS_CONTINUE;
		goto _out;
	}

	if (FUNC11(decrypted, attr->version2 != NULL) < 0) {
		FUNC4(decrypted);
		wps->state = SEND_WSC_NACK;
		res = WPS_CONTINUE;
		goto _out;
	}

	FUNC3(MSG_DEBUG,  "WPS: Processing decrypted Encrypted Settings "
		   "attribute");
	if (FUNC6(decrypted, eattr) < 0 ||
	    FUNC9(wps, decrypted, eattr->key_wrap_auth) ||
	    FUNC10(wps, eattr->r_snonce2)) {
		FUNC4(decrypted);
		wps->state = SEND_WSC_NACK;
		res = WPS_CONTINUE;
		goto _out;
	}
	FUNC4(decrypted);

	if (wps->wps->ap)
		wps->wps->event_cb(wps->wps->cb_ctx, WPS_EV_AP_PIN_SUCCESS,
				   NULL);

	wps->state = SEND_M7;
	res = WPS_CONTINUE;
_out:
	if (eattr)
		FUNC0(eattr);
	return res;
}