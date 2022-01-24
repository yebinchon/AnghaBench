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
struct wps_parse_attr {scalar_t__* msg_type; int /*<<< orphan*/ * enrollee_nonce; int /*<<< orphan*/ * registrar_nonce; } ;
struct wps_data {scalar_t__ state; TYPE_1__* wps; int /*<<< orphan*/  nonce_e; int /*<<< orphan*/  nonce_r; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {scalar_t__ ap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ RECV_ACK ; 
 int WPS_DONE ; 
 int WPS_FAILURE ; 
 scalar_t__ WPS_FINISHED ; 
 int /*<<< orphan*/  WPS_NONCE_LEN ; 
 scalar_t__ WPS_WSC_ACK ; 
 int /*<<< orphan*/  FUNC0 (struct wps_parse_attr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (struct wpabuf const*,struct wps_parse_attr*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static enum wps_process_res FUNC6(struct wps_data *wps,
						const struct wpabuf *msg)
{
	struct wps_parse_attr *attr;
	enum wps_process_res res;

	FUNC3(MSG_DEBUG,  "WPS: Received WSC_ACK");

	attr = (struct wps_parse_attr *)FUNC2(sizeof(struct wps_parse_attr));
        if (attr == NULL) {
		res = WPS_FAILURE;
		goto _out;
	}

	if (FUNC4(msg, attr) < 0) {
		res = WPS_FAILURE;
		goto _out;
	}

	if (attr->msg_type == NULL) {
		FUNC3(MSG_DEBUG,  "WPS: No Message Type attribute");
		res = WPS_FAILURE;
		goto _out;
	}

	if (*attr->msg_type != WPS_WSC_ACK) {
		FUNC3(MSG_DEBUG,  "WPS: Invalid Message Type %d",
			   *attr->msg_type);
		res = WPS_FAILURE;
		goto _out;
	}

	if (attr->registrar_nonce == NULL ||
	    FUNC1(wps->nonce_r, attr->registrar_nonce, WPS_NONCE_LEN) != 0)
	{
		FUNC3(MSG_DEBUG,  "WPS: Mismatch in registrar nonce");
		res = WPS_FAILURE;
		goto _out;
	}

	if (attr->enrollee_nonce == NULL ||
	    FUNC1(wps->nonce_e, attr->enrollee_nonce, WPS_NONCE_LEN) != 0) {
		FUNC3(MSG_DEBUG,  "WPS: Mismatch in enrollee nonce");
		res = WPS_FAILURE;
		goto _out;
	}

	if (wps->state == RECV_ACK && wps->wps->ap) {
		FUNC3(MSG_DEBUG,  "WPS: External Registrar registration "
			   "completed successfully");
		FUNC5(wps->wps);
		wps->state = WPS_FINISHED;
		res = WPS_DONE;
		goto _out;
	}

	res = WPS_FAILURE;
_out:
	if (attr)
		FUNC0(attr);

	return res;
}