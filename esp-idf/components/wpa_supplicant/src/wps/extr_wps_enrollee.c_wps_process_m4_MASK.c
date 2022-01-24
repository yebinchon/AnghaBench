#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wps_parse_attr {int /*<<< orphan*/  r_snonce1; int /*<<< orphan*/  key_wrap_auth; int /*<<< orphan*/ * version2; int /*<<< orphan*/  encr_settings_len; int /*<<< orphan*/  encr_settings; int /*<<< orphan*/  r_hash2; int /*<<< orphan*/  r_hash1; int /*<<< orphan*/  authenticator; int /*<<< orphan*/  enrollee_nonce; } ;
struct wps_data {scalar_t__ state; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ RECV_M4 ; 
 scalar_t__ SEND_M5 ; 
 void* SEND_WSC_NACK ; 
 int WPS_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (struct wps_parse_attr*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 struct wpabuf* FUNC4 (struct wps_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct wpabuf*,struct wps_parse_attr*) ; 
 scalar_t__ FUNC6 (struct wps_data*,int /*<<< orphan*/ ,struct wpabuf const*) ; 
 scalar_t__ FUNC7 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct wps_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum wps_process_res FUNC13(struct wps_data *wps,
					   const struct wpabuf *msg,
					   struct wps_parse_attr *attr)
{
	struct wpabuf *decrypted;
	struct wps_parse_attr *eattr;
	enum wps_process_res res;

	FUNC2(MSG_DEBUG,  "WPS: Received M4");

	eattr = (struct wps_parse_attr *)FUNC1(sizeof(struct wps_parse_attr));
        if (eattr == NULL) {
		wps->state = SEND_WSC_NACK;
		res = WPS_CONTINUE;
		goto _out;
	}

	if (wps->state != RECV_M4) {
		FUNC2(MSG_DEBUG,  "WPS: Unexpected state (%d) for "
			   "receiving M4", wps->state);
		wps->state = SEND_WSC_NACK;
		res = WPS_CONTINUE;
		goto _out;
	}

	if (FUNC7(wps, attr->enrollee_nonce) ||
	    FUNC6(wps, attr->authenticator, msg) ||
	    FUNC9(wps, attr->r_hash1) ||
	    FUNC10(wps, attr->r_hash2)) {
		wps->state = SEND_WSC_NACK;
		res = WPS_CONTINUE;
		goto _out;
	}

	decrypted = FUNC4(wps, attr->encr_settings,
					      attr->encr_settings_len);
	if (decrypted == NULL) {
		FUNC2(MSG_DEBUG,  "WPS: Failed to decrypted Encrypted "
			   "Settings attribute");
		wps->state = SEND_WSC_NACK;
		res = WPS_CONTINUE;
		goto _out;
	}

	if (FUNC12(decrypted, attr->version2 != NULL) < 0) {
		FUNC3(decrypted);
		wps->state = SEND_WSC_NACK;
		res = WPS_CONTINUE;
		goto _out;
	}

	FUNC2(MSG_DEBUG,  "WPS: Processing decrypted Encrypted Settings "
		   "attribute");
	if (FUNC5(decrypted, eattr) < 0 ||
	    FUNC8(wps, decrypted, eattr->key_wrap_auth) ||
	    FUNC11(wps, eattr->r_snonce1)) {
		FUNC3(decrypted);
		wps->state = SEND_WSC_NACK;
		res = WPS_CONTINUE;
		goto _out;
	}
	FUNC3(decrypted);

	wps->state = SEND_M5;
	res = WPS_CONTINUE;
_out:
	if (eattr)
		FUNC0(eattr);
	return res;
}