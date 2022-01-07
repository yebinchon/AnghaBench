
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_parse_attr {scalar_t__* msg_type; int * enrollee_nonce; int * registrar_nonce; } ;
struct wps_data {scalar_t__ state; TYPE_1__* wps; int nonce_e; int nonce_r; } ;
struct wpabuf {int dummy; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {scalar_t__ ap; } ;


 int MSG_DEBUG ;
 scalar_t__ RECV_ACK ;
 int WPS_DONE ;
 int WPS_FAILURE ;
 scalar_t__ WPS_FINISHED ;
 int WPS_NONCE_LEN ;
 scalar_t__ WPS_WSC_ACK ;
 int os_free (struct wps_parse_attr*) ;
 scalar_t__ os_memcmp (int ,int *,int ) ;
 scalar_t__ os_zalloc (int) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 int wps_success_event (TYPE_1__*) ;

__attribute__((used)) static enum wps_process_res wps_process_wsc_ack(struct wps_data *wps,
      const struct wpabuf *msg)
{
 struct wps_parse_attr *attr;
 enum wps_process_res res;

 wpa_printf(MSG_DEBUG, "WPS: Received WSC_ACK");

 attr = (struct wps_parse_attr *)os_zalloc(sizeof(struct wps_parse_attr));
        if (attr == ((void*)0)) {
  res = WPS_FAILURE;
  goto _out;
 }

 if (wps_parse_msg(msg, attr) < 0) {
  res = WPS_FAILURE;
  goto _out;
 }

 if (attr->msg_type == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Message Type attribute");
  res = WPS_FAILURE;
  goto _out;
 }

 if (*attr->msg_type != WPS_WSC_ACK) {
  wpa_printf(MSG_DEBUG, "WPS: Invalid Message Type %d",
      *attr->msg_type);
  res = WPS_FAILURE;
  goto _out;
 }

 if (attr->registrar_nonce == ((void*)0) ||
     os_memcmp(wps->nonce_r, attr->registrar_nonce, WPS_NONCE_LEN) != 0)
 {
  wpa_printf(MSG_DEBUG, "WPS: Mismatch in registrar nonce");
  res = WPS_FAILURE;
  goto _out;
 }

 if (attr->enrollee_nonce == ((void*)0) ||
     os_memcmp(wps->nonce_e, attr->enrollee_nonce, WPS_NONCE_LEN) != 0) {
  wpa_printf(MSG_DEBUG, "WPS: Mismatch in enrollee nonce");
  res = WPS_FAILURE;
  goto _out;
 }

 if (wps->state == RECV_ACK && wps->wps->ap) {
  wpa_printf(MSG_DEBUG, "WPS: External Registrar registration "
      "completed successfully");
  wps_success_event(wps->wps);
  wps->state = WPS_FINISHED;
  res = WPS_DONE;
  goto _out;
 }

 res = WPS_FAILURE;
_out:
 if (attr)
  os_free(attr);

 return res;
}
