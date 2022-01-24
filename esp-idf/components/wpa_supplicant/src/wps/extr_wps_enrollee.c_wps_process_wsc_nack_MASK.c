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
typedef  scalar_t__ u16 ;
struct wps_parse_attr {scalar_t__* msg_type; int /*<<< orphan*/ * config_error; int /*<<< orphan*/ * enrollee_nonce; int /*<<< orphan*/ * registrar_nonce; } ;
struct wps_data {int state; int /*<<< orphan*/  error_indication; int /*<<< orphan*/  wps; int /*<<< orphan*/ * nonce_e; int /*<<< orphan*/ * nonce_r; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  RECV_M4 130 
#define  RECV_M6 129 
#define  RECV_M8 128 
 int SEND_WSC_NACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int WPS_FAILURE ; 
 int /*<<< orphan*/  WPS_M3 ; 
 int /*<<< orphan*/  WPS_M5 ; 
 int /*<<< orphan*/  WPS_M7 ; 
 int /*<<< orphan*/  WPS_NONCE_LEN ; 
 scalar_t__ WPS_WSC_NACK ; 
 int /*<<< orphan*/  FUNC1 (struct wps_parse_attr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct wpabuf const*,struct wps_parse_attr*) ; 

__attribute__((used)) static enum wps_process_res FUNC8(struct wps_data *wps,
						 const struct wpabuf *msg)
{
	struct wps_parse_attr *attr;
	enum wps_process_res res;
	u16 config_error;

	FUNC5(MSG_DEBUG,  "WPS: Received WSC_NACK");

	attr = (struct wps_parse_attr *)FUNC3(sizeof(struct wps_parse_attr));
        if (attr == NULL) {
		res = WPS_FAILURE;
		goto _out;
	}

	if (FUNC7(msg, attr) < 0) {
		res = WPS_FAILURE;
		goto _out;
	}

	if (attr->msg_type == NULL) {
		FUNC5(MSG_DEBUG,  "WPS: No Message Type attribute");
		res = WPS_FAILURE;
		goto _out;
	}

	if (*attr->msg_type != WPS_WSC_NACK) {
		FUNC5(MSG_DEBUG,  "WPS: Invalid Message Type %d",
			   *attr->msg_type);
		res = WPS_FAILURE;
		goto _out;
	}

	if (attr->registrar_nonce == NULL ||
	    FUNC2(wps->nonce_r, attr->registrar_nonce, WPS_NONCE_LEN) != 0)
	{
		FUNC5(MSG_DEBUG,  "WPS: Mismatch in registrar nonce");
		FUNC4(MSG_DEBUG, "WPS: Received Registrar Nonce",
			    attr->registrar_nonce, WPS_NONCE_LEN);
		FUNC4(MSG_DEBUG, "WPS: Expected Registrar Nonce",
			    wps->nonce_r, WPS_NONCE_LEN);
		res = WPS_FAILURE;
		goto _out;
	}

	if (attr->enrollee_nonce == NULL ||
	    FUNC2(wps->nonce_e, attr->enrollee_nonce, WPS_NONCE_LEN) != 0) {
		FUNC5(MSG_DEBUG,  "WPS: Mismatch in enrollee nonce");
		FUNC4(MSG_DEBUG, "WPS: Received Enrollee Nonce",
			    attr->enrollee_nonce, WPS_NONCE_LEN);
		FUNC4(MSG_DEBUG, "WPS: Expected Enrollee Nonce",
			    wps->nonce_e, WPS_NONCE_LEN);
		res = WPS_FAILURE;
		goto _out;
	}

	if (attr->config_error == NULL) {
		FUNC5(MSG_DEBUG,  "WPS: No Configuration Error attribute "
			   "in WSC_NACK");
		res = WPS_FAILURE;
		goto _out;
	}

	config_error = FUNC0(attr->config_error);
	FUNC5(MSG_DEBUG,  "WPS: Registrar terminated negotiation with "
		   "Configuration Error %d", config_error);

	switch (wps->state) {
	case RECV_M4:
		FUNC6(wps->wps, WPS_M3, config_error,
			       wps->error_indication);
		break;
	case RECV_M6:
		FUNC6(wps->wps, WPS_M5, config_error,
			       wps->error_indication);
		break;
	case RECV_M8:
		FUNC6(wps->wps, WPS_M7, config_error,
			       wps->error_indication);
		break;
	default:
		break;
	}

	/* Followed by NACK if Enrollee is Supplicant or EAP-Failure if
	 * Enrollee is Authenticator */
	wps->state = SEND_WSC_NACK;

	res = WPS_FAILURE;
_out:
	if (attr)
		FUNC1(attr);

	return res;
}