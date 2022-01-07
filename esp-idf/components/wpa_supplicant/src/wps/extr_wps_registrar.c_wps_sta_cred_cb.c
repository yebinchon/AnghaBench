
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int auth_type; int encr_type; } ;
struct wps_data {TYPE_2__ cred; TYPE_1__* wps; } ;
struct TYPE_3__ {int cb_ctx; int (* cred_cb ) (int ,TYPE_2__*) ;} ;


 int MSG_DEBUG ;
 int WPS_AUTH_WPA2PSK ;
 int WPS_AUTH_WPAPSK ;
 int WPS_ENCR_AES ;
 int WPS_ENCR_TKIP ;
 int stub1 (int ,TYPE_2__*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void wps_sta_cred_cb(struct wps_data *wps)
{





 if (wps->cred.auth_type & WPS_AUTH_WPA2PSK)
  wps->cred.auth_type = WPS_AUTH_WPA2PSK;
 else if (wps->cred.auth_type & WPS_AUTH_WPAPSK)
  wps->cred.auth_type = WPS_AUTH_WPAPSK;
 if (wps->cred.encr_type & WPS_ENCR_AES)
  wps->cred.encr_type = WPS_ENCR_AES;
 else if (wps->cred.encr_type & WPS_ENCR_TKIP)
  wps->cred.encr_type = WPS_ENCR_TKIP;
 wpa_printf(MSG_DEBUG, "WPS: Update local configuration based on the "
     "AP configuration");
 if (wps->wps->cred_cb)
  wps->wps->cred_cb(wps->wps->cb_ctx, &wps->cred);
}
