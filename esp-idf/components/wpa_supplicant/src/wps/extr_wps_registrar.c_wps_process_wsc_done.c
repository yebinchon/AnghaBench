
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct wps_parse_attr {scalar_t__* msg_type; int * enrollee_nonce; int * registrar_nonce; } ;
struct wps_data {scalar_t__ state; TYPE_1__* wps; int * uuid_e; int p2p_dev_addr; scalar_t__ pbc; int dev_password_len; int dev_password; int mac_addr_e; int * new_psk; int new_psk_len; int er; int peer_dev; int nonce_e; int nonce_r; scalar_t__ ext_reg; } ;
struct wps_credential {int auth_type; int encr_type; int key_len; int key; int ssid_len; int ssid; } ;
struct wpabuf {int dummy; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
typedef int cred ;
struct TYPE_9__ {int pbc_ignore_uuid; int pbc_ignore_start; int disable_auto_conf; } ;
struct TYPE_8__ {scalar_t__ wps_state; TYPE_2__* registrar; scalar_t__ ap; int cb_ctx; int (* cred_cb ) (int ,struct wps_credential*) ;int ssid_len; int * ssid; scalar_t__ wps_upnp; } ;


 int MSG_DEBUG ;
 scalar_t__ RECV_DONE ;
 int WPS_AUTH_WPA2PSK ;
 int WPS_AUTH_WPAPSK ;
 int WPS_DONE ;
 int WPS_ENCR_AES ;
 int WPS_ENCR_TKIP ;
 int WPS_FAILURE ;
 int WPS_NONCE_LEN ;
 scalar_t__ WPS_STATE_CONFIGURED ;
 scalar_t__ WPS_STATE_NOT_CONFIGURED ;
 int WPS_UUID_LEN ;
 scalar_t__ WPS_WSC_DONE ;
 int os_free (int *) ;
 int os_get_time (int *) ;
 scalar_t__ os_memcmp (int ,int *,int ) ;
 int os_memcpy (int ,int *,int ) ;
 int os_memset (struct wps_credential*,int ,int) ;
 int stub1 (int ,struct wps_credential*) ;
 int wpa_hexdump_ascii_key (int ,char*,int *,int ) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wps_cb_new_psk (TYPE_2__*,int ,int *,int ) ;
 int wps_cb_reg_success (TYPE_2__*,int ,int *,int ,int ) ;
 int wps_device_store (TYPE_2__*,int *,int *) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 int wps_registrar_pbc_completed (TYPE_2__*) ;
 int wps_registrar_pin_completed (TYPE_2__*) ;
 int wps_registrar_remove_pbc_session (TYPE_2__*,int *,int ) ;
 int wps_sta_cred_cb (struct wps_data*) ;
 int wps_success_event (TYPE_1__*) ;

__attribute__((used)) static enum wps_process_res wps_process_wsc_done(struct wps_data *wps,
       const struct wpabuf *msg)
{
 struct wps_parse_attr attr;

 wpa_printf(MSG_DEBUG, "WPS: Received WSC_Done");

 if (wps->state != RECV_DONE && (!wps->ext_reg)){
  wpa_printf(MSG_DEBUG, "WPS: Unexpected state (%d) for "
      "receiving WSC_Done", wps->state);
  return WPS_FAILURE;
 }

 if (wps_parse_msg(msg, &attr) < 0)
  return WPS_FAILURE;

 if (attr.msg_type == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Message Type attribute");
  return WPS_FAILURE;
 }

 if (*attr.msg_type != WPS_WSC_DONE) {
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

 wpa_printf(MSG_DEBUG, "WPS: Negotiation completed successfully");
 wps_device_store(wps->wps->registrar, &wps->peer_dev,
    wps->uuid_e);

 if (wps->wps->wps_state == WPS_STATE_NOT_CONFIGURED && wps->new_psk &&
     wps->wps->ap && !wps->wps->registrar->disable_auto_conf) {
  struct wps_credential cred;

  wpa_printf(MSG_DEBUG, "WPS: Moving to Configured state based "
      "on first Enrollee connection");

  os_memset(&cred, 0, sizeof(cred));
  os_memcpy(cred.ssid, wps->wps->ssid, wps->wps->ssid_len);
  cred.ssid_len = wps->wps->ssid_len;
  cred.auth_type = WPS_AUTH_WPAPSK | WPS_AUTH_WPA2PSK;
  cred.encr_type = WPS_ENCR_TKIP | WPS_ENCR_AES;
  os_memcpy(cred.key, wps->new_psk, wps->new_psk_len);
  cred.key_len = wps->new_psk_len;

  wps->wps->wps_state = WPS_STATE_CONFIGURED;
  wpa_hexdump_ascii_key(MSG_DEBUG,
          "WPS: Generated random passphrase",
          wps->new_psk, wps->new_psk_len);
  if (wps->wps->cred_cb)
   wps->wps->cred_cb(wps->wps->cb_ctx, &cred);

  os_free(wps->new_psk);
  wps->new_psk = ((void*)0);
 }

 if (!wps->wps->ap && !wps->er)
  wps_sta_cred_cb(wps);

 if (wps->new_psk) {
  if (wps_cb_new_psk(wps->wps->registrar, wps->mac_addr_e,
       wps->new_psk, wps->new_psk_len)) {
   wpa_printf(MSG_DEBUG, "WPS: Failed to configure the "
       "new PSK");
  }
  os_free(wps->new_psk);
  wps->new_psk = ((void*)0);
 }

 wps_cb_reg_success(wps->wps->registrar, wps->mac_addr_e, wps->uuid_e,
      wps->dev_password, wps->dev_password_len);

 if (wps->pbc) {
  wps_registrar_remove_pbc_session(wps->wps->registrar,
       wps->uuid_e,
       wps->p2p_dev_addr);
  wps_registrar_pbc_completed(wps->wps->registrar);
  os_get_time(&wps->wps->registrar->pbc_ignore_start);
  os_memcpy(wps->wps->registrar->pbc_ignore_uuid, wps->uuid_e,
     WPS_UUID_LEN);
 } else {



 }



 wps_success_event(wps->wps);

 return WPS_DONE;
}
