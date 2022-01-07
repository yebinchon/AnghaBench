
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wps_data {TYPE_1__* wps; } ;
struct TYPE_2__ {scalar_t__ ap; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wps_process_cred_e (struct wps_data*,int const*,size_t,int) ;

__attribute__((used)) static int wps_process_creds(struct wps_data *wps, const u8 *cred[],
        size_t cred_len[], size_t num_cred, int wps2)
{
 size_t i;
 int ok = 0;

 if (wps->wps->ap)
  return 0;

 if (num_cred == 0) {
  wpa_printf(MSG_DEBUG, "WPS: No Credential attributes "
      "received");
  return -1;
 }

 for (i = 0; i < num_cred; i++) {
  int res;
  res = wps_process_cred_e(wps, cred[i], cred_len[i], wps2);
  if (res == 0)
   ok++;
  else if (res == -2) {
   wpa_printf(MSG_DEBUG, "WPS: WEP credential skipped");
  }
  else
   return -1;
 }

 if (ok == 0) {
  wpa_printf(MSG_DEBUG, "WPS: No valid Credential attribute "
      "received");
  return -1;
 }

 return 0;
}
