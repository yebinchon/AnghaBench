
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_registrar {TYPE_1__* wps; } ;
struct wps_credential {int encr_type; int auth_type; } ;
struct TYPE_2__ {int (* cred_cb ) (int ,struct wps_credential*) ;int cb_ctx; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int WPS_AUTH_WPA2PSK ;
 int WPS_AUTH_WPAPSK ;
 int WPS_ENCR_AES ;
 int WPS_ENCR_NONE ;
 int WPS_ENCR_TKIP ;
 int WPS_ENCR_WEP ;
 int stub1 (int ,struct wps_credential*) ;
 int wpa_printf (int ,char*,...) ;

int wps_registrar_config_ap(struct wps_registrar *reg,
       struct wps_credential *cred)
{
 if (reg->wps->cred_cb)
  return reg->wps->cred_cb(reg->wps->cb_ctx, cred);

 return -1;
}
