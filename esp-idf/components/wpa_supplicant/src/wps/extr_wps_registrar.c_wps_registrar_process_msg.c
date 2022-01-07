
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wps_parse_attr {scalar_t__* msg_type; } ;
struct wps_data {int ext_reg; int error_indication; int config_error; TYPE_1__* wps; int state; int mac_addr_e; } ;
struct wpabuf {int dummy; } ;
typedef enum wsc_op_code { ____Placeholder_wsc_op_code } wsc_op_code ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_3__ {scalar_t__ wps_upnp; int * upnp_msgs; } ;


 int MSG_DEBUG ;
 int SEND_WSC_NACK ;
 int UPNP_WPS_WLANEVENT_TYPE_EAP ;
 int WPS_CONTINUE ;
 int WPS_FAILURE ;
 scalar_t__ WPS_M3 ;
 int WPS_PENDING ;
 int WPS_WSC_DONE ;




 int upnp_wps_device_send_wlan_event (scalar_t__,int ,int ,struct wpabuf const*) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wpabuf_len (struct wpabuf const*) ;
 int wps_fail_event (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 int wps_process_wsc_ack (struct wps_data*,struct wpabuf const*) ;
 int wps_process_wsc_done (struct wps_data*,struct wpabuf const*) ;
 int wps_process_wsc_msg (struct wps_data*,struct wpabuf const*) ;
 int wps_process_wsc_nack (struct wps_data*,struct wpabuf const*) ;
 int wps_registrar_free_pending_m2 (TYPE_1__*) ;
 int wps_validate_wsc_ack (struct wpabuf const*) ;
 int wps_validate_wsc_done (struct wpabuf const*) ;
 int wps_validate_wsc_nack (struct wpabuf const*) ;

enum wps_process_res wps_registrar_process_msg(struct wps_data *wps,
            enum wsc_op_code op_code,
            const struct wpabuf *msg)
{
 enum wps_process_res ret;

 wpa_printf(MSG_DEBUG, "WPS: Processing received message (len=%lu "
     "op_code=%d)",
     (unsigned long) wpabuf_len(msg), op_code);
 switch (op_code) {
 case 129:
  return wps_process_wsc_msg(wps, msg);
 case 131:
  if (wps_validate_wsc_ack(msg) < 0)
   return WPS_FAILURE;
  return wps_process_wsc_ack(wps, msg);
 case 128:
  if (wps_validate_wsc_nack(msg) < 0)
   return WPS_FAILURE;
  return wps_process_wsc_nack(wps, msg);
 case 130:
  if (wps_validate_wsc_done(msg) < 0)
   return WPS_FAILURE;
  ret = wps_process_wsc_done(wps, msg);
  if (ret == WPS_FAILURE) {
   wps->state = SEND_WSC_NACK;
   wps_fail_event(wps->wps, WPS_WSC_DONE,
           wps->config_error,
           wps->error_indication);
  }
  return ret;
 default:
  wpa_printf(MSG_DEBUG, "WPS: Unsupported op_code %d", op_code);
  return WPS_FAILURE;
 }
}
