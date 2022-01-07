
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_data {int state; int uuid_r; int peer_dev; TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {scalar_t__ registrar; scalar_t__ ap; scalar_t__ ap_settings_len; } ;


 int MSG_DEBUG ;
 int RECV_M8 ;
 int WPS_M7 ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wps_build_ap_settings (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_authenticator (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_e_snonce2 (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_encr_settings (struct wps_data*,struct wpabuf*,struct wpabuf*) ;
 scalar_t__ wps_build_key_wrap_auth (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_msg_type (struct wpabuf*,int ) ;
 scalar_t__ wps_build_registrar_nonce (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_version (struct wpabuf*) ;
 scalar_t__ wps_build_wfa_ext (struct wpabuf*,int ,int *,int ) ;
 int wps_device_store (scalar_t__,int *,int ) ;

__attribute__((used)) static struct wpabuf * wps_build_m7(struct wps_data *wps)
{
 struct wpabuf *msg, *plain;

 wpa_printf(MSG_DEBUG, "WPS: Building Message M7");

 plain = wpabuf_alloc(500 + wps->wps->ap_settings_len);
 if (plain == ((void*)0))
  return ((void*)0);

 msg = wpabuf_alloc(1000 + wps->wps->ap_settings_len);
 if (msg == ((void*)0)) {
  wpabuf_free(plain);
  return ((void*)0);
 }

 if (wps_build_version(msg) ||
     wps_build_msg_type(msg, WPS_M7) ||
     wps_build_registrar_nonce(wps, msg) ||
     wps_build_e_snonce2(wps, plain) ||
     (wps->wps->ap && wps_build_ap_settings(wps, plain)) ||
     wps_build_key_wrap_auth(wps, plain) ||
     wps_build_encr_settings(wps, msg, plain) ||
     wps_build_wfa_ext(msg, 0, ((void*)0), 0) ||
     wps_build_authenticator(wps, msg)) {
  wpabuf_free(plain);
  wpabuf_free(msg);
  return ((void*)0);
 }
 wpabuf_free(plain);

 if (wps->wps->ap && wps->wps->registrar) {





  wps_device_store(wps->wps->registrar, &wps->peer_dev,
     wps->uuid_r);
 }

 wps->state = RECV_M8;
 return msg;
}
