
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct wps_parse_attr {scalar_t__* msg_type; int * config_error; int * enrollee_nonce; int * registrar_nonce; } ;
struct wps_data {int state; int error_indication; TYPE_1__* wps; int nonce_e; int nonce_r; scalar_t__ ext_reg; } ;
struct wpabuf {int dummy; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {scalar_t__ wps_upnp; } ;


 int MSG_DEBUG ;




 int SEND_WSC_NACK ;
 scalar_t__ WPA_GET_BE16 (int *) ;
 int WPS_FAILURE ;
 int WPS_M2 ;
 int WPS_M4 ;
 int WPS_M6 ;
 int WPS_M8 ;
 int WPS_NONCE_LEN ;
 scalar_t__ WPS_WSC_NACK ;
 scalar_t__ os_memcmp (int ,int *,int ) ;
 int wpa_printf (int ,char*,...) ;
 int wps_fail_event (TYPE_1__*,int ,scalar_t__,int ) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;

__attribute__((used)) static enum wps_process_res wps_process_wsc_nack(struct wps_data *wps,
       const struct wpabuf *msg)
{
 struct wps_parse_attr attr;
 int old_state;
 u16 config_error;

 wpa_printf(MSG_DEBUG, "WPS: Received WSC_NACK");

 old_state = wps->state;
 wps->state = SEND_WSC_NACK;

 if (wps_parse_msg(msg, &attr) < 0)
  return WPS_FAILURE;

 if (attr.msg_type == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Message Type attribute");
  return WPS_FAILURE;
 }

 if (*attr.msg_type != WPS_WSC_NACK) {
  wpa_printf(MSG_DEBUG, "WPS: Invalid Message Type %d",
      *attr.msg_type);
  return WPS_FAILURE;
 }
 if (attr.registrar_nonce == ((void*)0) ||
     os_memcmp(wps->nonce_r, attr.registrar_nonce, WPS_NONCE_LEN) != 0)
 {
  wpa_printf(MSG_DEBUG, "WPS: Mismatch in registrar nonce");
  return WPS_FAILURE;
 }

 if (attr.enrollee_nonce == ((void*)0) ||
     os_memcmp(wps->nonce_e, attr.enrollee_nonce, WPS_NONCE_LEN) != 0) {
  wpa_printf(MSG_DEBUG, "WPS: Mismatch in enrollee nonce");
  return WPS_FAILURE;
 }

 if (attr.config_error == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Configuration Error attribute "
      "in WSC_NACK");
  return WPS_FAILURE;
 }

 config_error = WPA_GET_BE16(attr.config_error);
 wpa_printf(MSG_DEBUG, "WPS: Enrollee terminated negotiation with "
     "Configuration Error %d", config_error);

 switch (old_state) {
 case 130:
  wps_fail_event(wps->wps, WPS_M2, config_error,
          wps->error_indication);
  break;
 case 129:
  wps_fail_event(wps->wps, WPS_M4, config_error,
          wps->error_indication);
  break;
 case 128:
  wps_fail_event(wps->wps, WPS_M6, config_error,
          wps->error_indication);
  break;
 case 131:
  wps_fail_event(wps->wps, WPS_M8, config_error,
          wps->error_indication);
  break;
 default:
  break;
 }

 return WPS_FAILURE;
}
