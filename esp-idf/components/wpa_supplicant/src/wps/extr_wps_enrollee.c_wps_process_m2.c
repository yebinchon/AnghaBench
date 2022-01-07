
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_parse_attr {int authenticator; int public_key_len; int public_key; int uuid_r; int enrollee_nonce; int registrar_nonce; } ;
struct wps_data {scalar_t__ state; int peer_dev; int config_error; int * dev_password; TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {int ap_setup_locked; scalar_t__ ap; } ;


 int MSG_DEBUG ;
 scalar_t__ RECV_M2 ;
 scalar_t__ SEND_M3 ;
 void* SEND_WSC_NACK ;
 int WPS_CFG_SETUP_LOCKED ;
 int WPS_CONTINUE ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wps_process_authenticator (struct wps_data*,int ,struct wpabuf const*) ;
 scalar_t__ wps_process_device_attrs (int *,struct wps_parse_attr*) ;
 scalar_t__ wps_process_enrollee_nonce (struct wps_data*,int ) ;
 scalar_t__ wps_process_pubkey (struct wps_data*,int ,int ) ;
 scalar_t__ wps_process_registrar_nonce (struct wps_data*,int ) ;
 scalar_t__ wps_process_uuid_r (struct wps_data*,int ) ;

__attribute__((used)) static enum wps_process_res wps_process_m2(struct wps_data *wps,
        const struct wpabuf *msg,
        struct wps_parse_attr *attr)
{
 wpa_printf(MSG_DEBUG, "WPS: Received M2");

 if (wps->state != RECV_M2) {
  wpa_printf(MSG_DEBUG, "WPS: Unexpected state (%d) for "
      "receiving M2", wps->state);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 if (wps_process_registrar_nonce(wps, attr->registrar_nonce) ||
     wps_process_enrollee_nonce(wps, attr->enrollee_nonce) ||
     wps_process_uuid_r(wps, attr->uuid_r)) {
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }







 if (wps->wps->ap &&
     ((wps->wps->ap_setup_locked && wps->wps->ap_setup_locked != 2) ||
      wps->dev_password == ((void*)0))) {
  wpa_printf(MSG_DEBUG, "WPS: AP Setup is locked - refuse "
      "registration of a new Registrar");
  wps->config_error = WPS_CFG_SETUP_LOCKED;
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 if (wps_process_pubkey(wps, attr->public_key, attr->public_key_len) ||
     wps_process_authenticator(wps, attr->authenticator, msg) ||
     wps_process_device_attrs(&wps->peer_dev, attr)) {
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 wps->state = SEND_M3;
 return WPS_CONTINUE;
}
