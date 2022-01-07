
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wps_parse_attr {int dummy; } ;
struct TYPE_6__ {scalar_t__ cred_attr_len; int * cred_attr; } ;
struct wps_data {TYPE_2__ cred; int ap_settings_cb_ctx; int (* ap_settings_cb ) (int ,TYPE_2__*) ;TYPE_1__* wps; scalar_t__ new_ap_settings; scalar_t__ er; } ;
struct wpabuf {int dummy; } ;
struct TYPE_5__ {int registrar; scalar_t__ ap; } ;


 int MSG_INFO ;
 int stub1 (int ,TYPE_2__*) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int * wpabuf_head (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;
 struct wpabuf* wps_build_ap_cred (struct wps_data*) ;
 int wps_cred_update (TYPE_2__*,scalar_t__) ;
 scalar_t__ wps_process_ap_settings (struct wps_parse_attr*,TYPE_2__*) ;
 int wps_registrar_pin_completed (int ) ;
 int wps_sta_cred_cb (struct wps_data*) ;

__attribute__((used)) static int wps_process_ap_settings_r(struct wps_data *wps,
         struct wps_parse_attr *attr)
{
 struct wpabuf *msg;

 if (wps->wps->ap || wps->er)
  return 0;


 if (wps_process_ap_settings(attr, &wps->cred) < 0)
  return -1;

 wpa_printf(MSG_INFO, "WPS: Received old AP configuration from AP");

 if (wps->new_ap_settings) {
  wpa_printf(MSG_INFO, "WPS: Update AP configuration based on "
      "new settings");
  wps_cred_update(&wps->cred, wps->new_ap_settings);
  return 0;
 } else {
  msg = wps_build_ap_cred(wps);
  if (msg == ((void*)0))
   return -1;
  wps->cred.cred_attr = wpabuf_head(msg);
  wps->cred.cred_attr_len = wpabuf_len(msg);

  if (wps->ap_settings_cb) {
   wps->ap_settings_cb(wps->ap_settings_cb_ctx,
         &wps->cred);
   wpabuf_free(msg);
   return 1;
  }
  wps_sta_cred_cb(wps);

  wps->cred.cred_attr = ((void*)0);
  wps->cred.cred_attr_len = 0;
  wpabuf_free(msg);

  return 1;
 }
}
