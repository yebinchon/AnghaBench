#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wps_parse_attr {scalar_t__* msg_type; } ;
struct wps_data {int ext_reg; int /*<<< orphan*/  error_indication; int /*<<< orphan*/  config_error; TYPE_1__* wps; int /*<<< orphan*/  state; int /*<<< orphan*/  mac_addr_e; } ;
struct wpabuf {int dummy; } ;
typedef  enum wsc_op_code { ____Placeholder_wsc_op_code } wsc_op_code ;
typedef  enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_3__ {scalar_t__ wps_upnp; int /*<<< orphan*/ * upnp_msgs; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SEND_WSC_NACK ; 
 int /*<<< orphan*/  UPNP_WPS_WLANEVENT_TYPE_EAP ; 
 int WPS_CONTINUE ; 
 int WPS_FAILURE ; 
 scalar_t__ WPS_M3 ; 
 int WPS_PENDING ; 
 int /*<<< orphan*/  WPS_WSC_DONE ; 
#define  WSC_ACK 131 
#define  WSC_Done 130 
#define  WSC_MSG 129 
#define  WSC_NACK 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC2 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct wpabuf const*,struct wps_parse_attr*) ; 
 int FUNC5 (struct wps_data*,struct wpabuf const*) ; 
 int FUNC6 (struct wps_data*,struct wpabuf const*) ; 
 int FUNC7 (struct wps_data*,struct wpabuf const*) ; 
 int FUNC8 (struct wps_data*,struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf const*) ; 

enum wps_process_res FUNC13(struct wps_data *wps,
					       enum wsc_op_code op_code,
					       const struct wpabuf *msg)
{
	enum wps_process_res ret;

	FUNC1(MSG_DEBUG,  "WPS: Processing received message (len=%lu "
		   "op_code=%d)",
		   (unsigned long) FUNC2(msg), op_code);

#ifdef CONFIG_WPS_UPNP
	if (wps->wps->wps_upnp && op_code == WSC_MSG && wps->ext_reg == 1) {
		struct wps_parse_attr attr;
		if (wps_parse_msg(msg, &attr) == 0 && attr.msg_type &&
		    *attr.msg_type == WPS_M3)
			wps->ext_reg = 2; /* past M2/M2D phase */
	}
	if (wps->ext_reg > 1)
		wps_registrar_free_pending_m2(wps->wps);
	if (wps->wps->wps_upnp && wps->ext_reg &&
	    wps->wps->upnp_msgs == NULL &&
	    (op_code == WSC_MSG || op_code == WSC_Done || op_code == WSC_NACK))
	{
		struct wps_parse_attr attr;
		int type;
		if (wps_parse_msg(msg, &attr) < 0 || attr.msg_type == NULL)
			type = -1;
		else
			type = *attr.msg_type;
		wpa_printf(MSG_DEBUG,  "WPS: Sending received message (type %d)"
			   " to external Registrar for processing", type);
		upnp_wps_device_send_wlan_event(wps->wps->wps_upnp,
						wps->mac_addr_e,
						UPNP_WPS_WLANEVENT_TYPE_EAP,
						msg);
		if (op_code == WSC_MSG)
			return WPS_PENDING;
	} else if (wps->wps->wps_upnp && wps->ext_reg && op_code == WSC_MSG) {
		wpa_printf(MSG_DEBUG,  "WPS: Skip internal processing - using "
			   "external Registrar");
		return WPS_CONTINUE;
	}
#endif /* CONFIG_WPS_UPNP */

	switch (op_code) {
	case WSC_MSG:
		return FUNC7(wps, msg);
	case WSC_ACK:
		if (FUNC10(msg) < 0)
			return WPS_FAILURE;
		return FUNC5(wps, msg);
	case WSC_NACK:
		if (FUNC12(msg) < 0)
			return WPS_FAILURE;
		return FUNC8(wps, msg);
	case WSC_Done:
		if (FUNC11(msg) < 0)
			return WPS_FAILURE;
		ret = FUNC6(wps, msg);
		if (ret == WPS_FAILURE) {
			wps->state = SEND_WSC_NACK;
			FUNC3(wps->wps, WPS_WSC_DONE,
				       wps->config_error,
				       wps->error_indication);
		}
		return ret;
	default:
		FUNC1(MSG_DEBUG,  "WPS: Unsupported op_code %d", op_code);
		return WPS_FAILURE;
	}
}