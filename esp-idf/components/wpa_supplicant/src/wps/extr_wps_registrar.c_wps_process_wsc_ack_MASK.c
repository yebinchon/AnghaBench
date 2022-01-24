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
struct wps_data {int ext_reg; scalar_t__ state; TYPE_1__* wps; int /*<<< orphan*/  nonce_e; int /*<<< orphan*/  nonce_r; } ;
struct wpabuf {int dummy; } ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {scalar_t__ upnp_msgs; scalar_t__ wps_upnp; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ RECV_M2D_ACK ; 
 int WPS_CONTINUE ; 
 int WPS_FAILURE ; 
 int /*<<< orphan*/  WPS_NONCE_LEN ; 
 int WPS_PENDING ; 
 scalar_t__ WPS_WSC_ACK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (struct wpabuf const*,struct wps_parse_attr*) ; 

__attribute__((used)) static enum wps_process_res FUNC4(struct wps_data *wps,
						const struct wpabuf *msg)
{
	struct wps_parse_attr attr;

	FUNC2(MSG_DEBUG,  "WPS: Received WSC_ACK");

	if (FUNC3(msg, &attr) < 0)
		return WPS_FAILURE;

	if (attr.msg_type == NULL) {
		FUNC2(MSG_DEBUG,  "WPS: No Message Type attribute");
		return WPS_FAILURE;
	}

	if (*attr.msg_type != WPS_WSC_ACK) {
		FUNC2(MSG_DEBUG,  "WPS: Invalid Message Type %d",
			   *attr.msg_type);
		return WPS_FAILURE;
	}

#ifdef CONFIG_WPS_UPNP
	if (wps->wps->wps_upnp && wps->ext_reg && wps->state == RECV_M2D_ACK &&
	    upnp_wps_subscribers(wps->wps->wps_upnp)) {
		if (wps->wps->upnp_msgs)
			return WPS_CONTINUE;
		wpa_printf(MSG_DEBUG,  "WPS: Wait for response from an "
			   "external Registrar");
		return WPS_PENDING;
	}
#endif /* CONFIG_WPS_UPNP */

	if (attr.registrar_nonce == NULL ||
	    FUNC0(wps->nonce_r, attr.registrar_nonce, WPS_NONCE_LEN) != 0)
	{
		FUNC2(MSG_DEBUG,  "WPS: Mismatch in registrar nonce");
		return WPS_FAILURE;
	}

	if (attr.enrollee_nonce == NULL ||
	    FUNC0(wps->nonce_e, attr.enrollee_nonce, WPS_NONCE_LEN) != 0) {
		FUNC2(MSG_DEBUG,  "WPS: Mismatch in enrollee nonce");
		return WPS_FAILURE;
	}

	if (wps->state == RECV_M2D_ACK) {
#ifdef CONFIG_WPS_UPNP
		if (wps->wps->wps_upnp &&
		    upnp_wps_subscribers(wps->wps->wps_upnp)) {
			if (wps->wps->upnp_msgs)
				return WPS_CONTINUE;
			if (wps->ext_reg == 0)
				wps->ext_reg = 1;
			wpa_printf(MSG_DEBUG,  "WPS: Wait for response from an "
				   "external Registrar");
			return WPS_PENDING;
		}
#endif /* CONFIG_WPS_UPNP */

		FUNC2(MSG_DEBUG,  "WPS: No more registrars available - "
			   "terminate negotiation");
	}

	return WPS_FAILURE;
}