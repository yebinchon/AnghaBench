
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_parse_attr {scalar_t__* msg_type; int * enrollee_nonce; int * registrar_nonce; } ;
struct wps_data {int ext_reg; scalar_t__ state; TYPE_1__* wps; int nonce_e; int nonce_r; } ;
struct wpabuf {int dummy; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {scalar_t__ upnp_msgs; scalar_t__ wps_upnp; } ;


 int MSG_DEBUG ;
 scalar_t__ RECV_M2D_ACK ;
 int WPS_CONTINUE ;
 int WPS_FAILURE ;
 int WPS_NONCE_LEN ;
 int WPS_PENDING ;
 scalar_t__ WPS_WSC_ACK ;
 scalar_t__ os_memcmp (int ,int *,int ) ;
 scalar_t__ upnp_wps_subscribers (scalar_t__) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;

__attribute__((used)) static enum wps_process_res wps_process_wsc_ack(struct wps_data *wps,
      const struct wpabuf *msg)
{
 struct wps_parse_attr attr;

 wpa_printf(MSG_DEBUG, "WPS: Received WSC_ACK");

 if (wps_parse_msg(msg, &attr) < 0)
  return WPS_FAILURE;

 if (attr.msg_type == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Message Type attribute");
  return WPS_FAILURE;
 }

 if (*attr.msg_type != WPS_WSC_ACK) {
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

 if (wps->state == RECV_M2D_ACK) {
  wpa_printf(MSG_DEBUG, "WPS: No more registrars available - "
      "terminate negotiation");
 }

 return WPS_FAILURE;
}
