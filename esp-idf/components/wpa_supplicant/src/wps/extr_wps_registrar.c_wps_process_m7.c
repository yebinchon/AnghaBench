
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wps_parse_attr {int e_snonce2; int key_wrap_auth; int * version2; int encr_settings_len; int encr_settings; int authenticator; int registrar_nonce; } ;
struct wps_data {scalar_t__ state; scalar_t__ er; TYPE_2__* wps; int config_error; scalar_t__ pbc; } ;
struct wpabuf {int dummy; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_4__ {scalar_t__ ap; TYPE_1__* registrar; } ;
struct TYPE_3__ {scalar_t__ force_pbc_overlap; } ;


 int MSG_DEBUG ;
 scalar_t__ RECV_M7 ;
 scalar_t__ SEND_M8 ;
 void* SEND_WSC_NACK ;
 int WPS_CFG_MULTIPLE_PBC_DETECTED ;
 int WPS_CONTINUE ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 struct wpabuf* wps_decrypt_encr_settings (struct wps_data*,int ,int ) ;
 scalar_t__ wps_parse_msg (struct wpabuf*,struct wps_parse_attr*) ;
 scalar_t__ wps_process_ap_settings_r (struct wps_data*,struct wps_parse_attr*) ;
 scalar_t__ wps_process_authenticator (struct wps_data*,int ,struct wpabuf const*) ;
 scalar_t__ wps_process_e_snonce2 (struct wps_data*,int ) ;
 scalar_t__ wps_process_key_wrap_auth (struct wps_data*,struct wpabuf*,int ) ;
 scalar_t__ wps_process_registrar_nonce (struct wps_data*,int ) ;
 int wps_registrar_skip_overlap (struct wps_data*) ;
 scalar_t__ wps_validate_m7_encr (struct wpabuf*,int,int ) ;

__attribute__((used)) static enum wps_process_res wps_process_m7(struct wps_data *wps,
        const struct wpabuf *msg,
        struct wps_parse_attr *attr)
{
 struct wpabuf *decrypted;
 struct wps_parse_attr eattr;

 wpa_printf(MSG_DEBUG, "WPS: Received M7");

 if (wps->state != RECV_M7) {
  wpa_printf(MSG_DEBUG, "WPS: Unexpected state (%d) for "
      "receiving M7", wps->state);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 if (wps->pbc && wps->wps->registrar->force_pbc_overlap &&
     !wps_registrar_skip_overlap(wps)) {
  wpa_printf(MSG_DEBUG, "WPS: Reject negotiation due to PBC "
      "session overlap");
  wps->state = SEND_WSC_NACK;
  wps->config_error = WPS_CFG_MULTIPLE_PBC_DETECTED;
  return WPS_CONTINUE;
 }

 if (wps_process_registrar_nonce(wps, attr->registrar_nonce) ||
     wps_process_authenticator(wps, attr->authenticator, msg)) {
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 decrypted = wps_decrypt_encr_settings(wps, attr->encr_settings,
           attr->encr_settings_len);
 if (decrypted == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: Failed to decrypt Encrypted "
      "Settings attribute");
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 if (wps_validate_m7_encr(decrypted, wps->wps->ap || wps->er,
     attr->version2 != ((void*)0)) < 0) {
  wpabuf_free(decrypted);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 wpa_printf(MSG_DEBUG, "WPS: Processing decrypted Encrypted Settings "
     "attribute");
 if (wps_parse_msg(decrypted, &eattr) < 0 ||
     wps_process_key_wrap_auth(wps, decrypted, eattr.key_wrap_auth) ||
     wps_process_e_snonce2(wps, eattr.e_snonce2) ||
     wps_process_ap_settings_r(wps, &eattr)) {
  wpabuf_free(decrypted);
  wps->state = SEND_WSC_NACK;
  return WPS_CONTINUE;
 }

 wpabuf_free(decrypted);

 wps->state = SEND_M8;
 return WPS_CONTINUE;
}
