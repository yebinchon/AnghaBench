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
struct wps_parse_attr {int* msg_type; int /*<<< orphan*/ * enrollee_nonce; } ;
struct wps_data {int /*<<< orphan*/  last_msg; int /*<<< orphan*/  error_indication; int /*<<< orphan*/  config_error; int /*<<< orphan*/  wps; int /*<<< orphan*/  state; int /*<<< orphan*/  nonce_e; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  RECV_M2 ; 
 int /*<<< orphan*/  RECV_M4 ; 
 int /*<<< orphan*/  RECV_M6 ; 
 int /*<<< orphan*/  RECV_M8 ; 
 int /*<<< orphan*/  SEND_WSC_NACK ; 
 int WPS_CONTINUE ; 
 int WPS_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  WPS_M2 132 
#define  WPS_M2D 131 
#define  WPS_M4 130 
#define  WPS_M6 129 
#define  WPS_M8 128 
 int /*<<< orphan*/  WPS_NONCE_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct wps_parse_attr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct wpabuf const*,struct wps_parse_attr*) ; 
 int FUNC9 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ; 
 int FUNC10 (struct wps_data*,struct wps_parse_attr*) ; 
 int FUNC11 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ; 
 int FUNC12 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ; 
 int FUNC13 (struct wps_data*,struct wpabuf const*,struct wps_parse_attr*) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC15 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC17 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC18 (struct wpabuf const*) ; 

__attribute__((used)) static enum wps_process_res FUNC19(struct wps_data *wps,
						const struct wpabuf *msg)
{
	struct wps_parse_attr *attr;
	enum wps_process_res ret = WPS_CONTINUE;

	FUNC4(MSG_DEBUG,  "WPS: Received WSC_MSG");

	attr = (struct wps_parse_attr *)FUNC3(sizeof(struct wps_parse_attr));
        if (attr == NULL) {
		ret = WPS_FAILURE;
		goto _out;
	}

	if (FUNC8(msg, attr) < 0) {
		ret = WPS_FAILURE;
		goto _out;
	}

	if (attr->enrollee_nonce == NULL ||
	    FUNC2(wps->nonce_e, attr->enrollee_nonce, WPS_NONCE_LEN) != 0) {
		FUNC4(MSG_DEBUG,  "WPS: Mismatch in enrollee nonce");
		ret = WPS_FAILURE;
		goto _out;
	}

	if (attr->msg_type == NULL) {
		FUNC4(MSG_DEBUG,  "WPS: No Message Type attribute");
		wps->state = SEND_WSC_NACK;
		ret = WPS_CONTINUE;
		goto _out;
	}

	switch (*attr->msg_type) {
	case WPS_M2:
                FUNC0(RECV_M2);
		if (FUNC14(msg) < 0) {
			ret = WPS_FAILURE;
			goto _out;
		}
		ret = FUNC9(wps, msg, attr);
		break;
	case WPS_M2D:
		if (FUNC15(msg) < 0) {
			ret = WPS_FAILURE;
			goto _out;
		}
		ret = FUNC10(wps, attr);
		break;
	case WPS_M4:
                FUNC0(RECV_M4);
		if (FUNC16(msg) < 0) {
			ret = WPS_FAILURE;
			goto _out;
		}
		ret = FUNC11(wps, msg, attr);
		if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
			FUNC7(wps->wps, WPS_M4, wps->config_error,
				       wps->error_indication);
		break;
	case WPS_M6:
                FUNC0(RECV_M6);
		if (FUNC17(msg) < 0) {
			ret = WPS_FAILURE;
			goto _out;
		}
		ret = FUNC12(wps, msg, attr);
		if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
			FUNC7(wps->wps, WPS_M6, wps->config_error,
				       wps->error_indication);
		break;
	case WPS_M8:
                FUNC0(RECV_M8);
		if (FUNC18(msg) < 0) {
			ret = WPS_FAILURE;
			goto _out;
		}
		ret = FUNC13(wps, msg, attr);
		if (ret == WPS_FAILURE || wps->state == SEND_WSC_NACK)
			FUNC7(wps->wps, WPS_M8, wps->config_error,
				       wps->error_indication);
		break;
	default:
		FUNC4(MSG_DEBUG,  "WPS: Unsupported Message Type %d",
			   *attr->msg_type);
		ret = WPS_FAILURE;
		goto _out;
	}

	/*
	 * Save a copy of the last message for Authenticator derivation if we
	 * are continuing. However, skip M2D since it is not authenticated and
	 * neither is the ACK/NACK response frame. This allows the possibly
	 * following M2 to be processed correctly by using the previously sent
	 * M1 in Authenticator derivation.
	 */
	if (ret == WPS_CONTINUE && *attr->msg_type != WPS_M2D) {
		/* Save a copy of the last message for Authenticator derivation
		 */
		FUNC6(wps->last_msg);
		wps->last_msg = FUNC5(msg);
	}

_out:
	if (attr)
		FUNC1(attr);

	return ret;
}