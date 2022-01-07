
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_data {int int_reg; int state; TYPE_1__* wps; int dev_pw_id; int uuid_r; int nonce_r; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int dev; int registrar; } ;


 int MSG_DEBUG ;
 int RECV_M3 ;
 int WPS_CALC_KEY_NORMAL ;
 int WPS_CFG_NO_ERROR ;
 int WPS_M2 ;
 int WPS_NONCE_LEN ;
 int WPS_UUID_LEN ;
 scalar_t__ random_get_bytes (int ,int ) ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wps_build_assoc_state (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_auth_type_flags (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_authenticator (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_config_error (struct wpabuf*,int ) ;
 scalar_t__ wps_build_config_methods_r (int ,struct wpabuf*) ;
 scalar_t__ wps_build_conn_type_flags (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_dev_password_id (struct wpabuf*,int ) ;
 scalar_t__ wps_build_device_attrs (int *,struct wpabuf*) ;
 scalar_t__ wps_build_encr_type_flags (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_enrollee_nonce (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_msg_type (struct wpabuf*,int ) ;
 scalar_t__ wps_build_os_version (int *,struct wpabuf*) ;
 scalar_t__ wps_build_public_key (struct wps_data*,struct wpabuf*,int ) ;
 scalar_t__ wps_build_registrar_nonce (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_rf_bands (int *,struct wpabuf*) ;
 scalar_t__ wps_build_uuid_r (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_version (struct wpabuf*) ;
 scalar_t__ wps_build_wfa_ext (struct wpabuf*,int ,int *,int ) ;
 scalar_t__ wps_derive_keys (struct wps_data*) ;

__attribute__((used)) static struct wpabuf * wps_build_m2(struct wps_data *wps)
{
 struct wpabuf *msg;

 if (random_get_bytes(wps->nonce_r, WPS_NONCE_LEN) < 0)
  return ((void*)0);
 wpa_hexdump(MSG_DEBUG, "WPS: Registrar Nonce",
      wps->nonce_r, WPS_NONCE_LEN);
 wpa_hexdump(MSG_DEBUG, "WPS: UUID-R", wps->uuid_r, WPS_UUID_LEN);

 wpa_printf(MSG_DEBUG, "WPS: Building Message M2");
 msg = wpabuf_alloc(1000);
 if (msg == ((void*)0))
  return ((void*)0);

 if (wps_build_version(msg) ||
     wps_build_msg_type(msg, WPS_M2) ||
     wps_build_enrollee_nonce(wps, msg) ||
     wps_build_registrar_nonce(wps, msg) ||
     wps_build_uuid_r(wps, msg) ||
     wps_build_public_key(wps, msg, WPS_CALC_KEY_NORMAL) ||
     wps_derive_keys(wps) ||
     wps_build_auth_type_flags(wps, msg) ||
     wps_build_encr_type_flags(wps, msg) ||
     wps_build_conn_type_flags(wps, msg) ||
     wps_build_config_methods_r(wps->wps->registrar, msg) ||
     wps_build_device_attrs(&wps->wps->dev, msg) ||
     wps_build_rf_bands(&wps->wps->dev, msg) ||
     wps_build_assoc_state(wps, msg) ||
     wps_build_config_error(msg, WPS_CFG_NO_ERROR) ||
     wps_build_dev_password_id(msg, wps->dev_pw_id) ||
     wps_build_os_version(&wps->wps->dev, msg) ||
     wps_build_wfa_ext(msg, 0, ((void*)0), 0) ||
     wps_build_authenticator(wps, msg)) {
  wpabuf_free(msg);
  return ((void*)0);
 }

 wps->int_reg = 1;
 wps->state = RECV_M3;
 return msg;
}
