#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wps_parse_attr {int /*<<< orphan*/  e_hash2; int /*<<< orphan*/  e_hash1; int /*<<< orphan*/  authenticator; int /*<<< orphan*/  registrar_nonce; } ;
struct wps_data {scalar_t__ state; int /*<<< orphan*/  config_error; TYPE_2__* wps; scalar_t__ pbc; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_4__ {TYPE_1__* registrar; } ;
struct TYPE_3__ {scalar_t__ force_pbc_overlap; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ RECV_M3 ; 
 scalar_t__ SEND_M4 ; 
 void* SEND_WSC_NACK ; 
 int /*<<< orphan*/  WPS_CFG_MULTIPLE_PBC_DETECTED ; 
 int WPS_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (struct wps_data*,int /*<<< orphan*/ ,struct wpabuf const*) ; 
 scalar_t__ FUNC2 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct wps_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct wps_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wps_data*) ; 

__attribute__((used)) static enum wps_process_res FUNC6(struct wps_data *wps,
					   const struct wpabuf *msg,
					   struct wps_parse_attr *attr)
{
	FUNC0(MSG_DEBUG,  "WPS: Received M3");

	if (wps->state != RECV_M3) {
		FUNC0(MSG_DEBUG,  "WPS: Unexpected state (%d) for "
			   "receiving M3", wps->state);
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	if (wps->pbc && wps->wps->registrar->force_pbc_overlap &&
	    !FUNC5(wps)) {
		FUNC0(MSG_DEBUG,  "WPS: Reject negotiation due to PBC "
			   "session overlap");
		wps->state = SEND_WSC_NACK;
		wps->config_error = WPS_CFG_MULTIPLE_PBC_DETECTED;
		return WPS_CONTINUE;
	}

	if (FUNC4(wps, attr->registrar_nonce) ||
	    FUNC1(wps, attr->authenticator, msg) ||
	    FUNC2(wps, attr->e_hash1) ||
	    FUNC3(wps, attr->e_hash2)) {
		wps->state = SEND_WSC_NACK;
		return WPS_CONTINUE;
	}

	wps->state = SEND_M4;
	return WPS_CONTINUE;
}