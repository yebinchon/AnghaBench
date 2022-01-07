
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_data {int config_error; } ;
struct wpabuf {int dummy; } ;


 int MSG_DEBUG ;
 int WPS_WSC_NACK ;
 int wpa_printf (int ,char*) ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wps_build_config_error (struct wpabuf*,int ) ;
 scalar_t__ wps_build_enrollee_nonce (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_msg_type (struct wpabuf*,int ) ;
 scalar_t__ wps_build_registrar_nonce (struct wps_data*,struct wpabuf*) ;
 scalar_t__ wps_build_version (struct wpabuf*) ;
 scalar_t__ wps_build_wfa_ext (struct wpabuf*,int ,int *,int ) ;

struct wpabuf * wps_build_wsc_nack(struct wps_data *wps)
{
 struct wpabuf *msg;

 wpa_printf(MSG_DEBUG, "WPS: Building Message WSC_NACK");

 msg = wpabuf_alloc(1000);
 if (msg == ((void*)0))
  return ((void*)0);

 if (wps_build_version(msg) ||
     wps_build_msg_type(msg, WPS_WSC_NACK) ||
     wps_build_enrollee_nonce(wps, msg) ||
     wps_build_registrar_nonce(wps, msg) ||
     wps_build_config_error(msg, wps->config_error) ||
     wps_build_wfa_ext(msg, 0, ((void*)0), 0)) {
  wpabuf_free(msg);
  return ((void*)0);
 }

 return msg;
}
