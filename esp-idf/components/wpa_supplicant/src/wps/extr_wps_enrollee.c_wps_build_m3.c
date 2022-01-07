
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_data {int state; int dev_password_len; int * dev_password; } ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int RECV_M4 ;
 int WPS_M3 ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wps_build_authenticator (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_e_hash (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_msg_type (struct wpabuf*,int ) ;
 scalar_t__ wps_build_registrar_nonce (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_version (struct wpabuf*) ;
 scalar_t__ wps_build_wfa_ext (struct wpabuf*,int ,int *,int ) ;
 int wps_derive_psk (struct wps_data*,int *,int ) ;

__attribute__((used)) static struct wpabuf * wps_build_m3(struct wps_data *wps)
{
 struct wpabuf *msg;

 wpa_printf(MSG_DEBUG, "WPS: Building Message M3");

 if (wps->dev_password == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Device Password available");
  return ((void*)0);
 }
 wps_derive_psk(wps, wps->dev_password, wps->dev_password_len);

 msg = wpabuf_alloc(1000);
 if (msg == ((void*)0))
  return ((void*)0);

 if (wps_build_version(msg) ||
     wps_build_msg_type(msg, WPS_M3) ||
     wps_build_registrar_nonce(wps, msg) ||
     wps_build_e_hash(wps, msg) ||
     wps_build_wfa_ext(msg, 0, ((void*)0), 0) ||
     wps_build_authenticator(wps, msg)) {
  wpabuf_free(msg);
  return ((void*)0);
 }

 wps->state = RECV_M4;
 return msg;
}
