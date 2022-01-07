
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int nonce_r; } ;


 int MSG_DEBUG ;
 int WPS_NONCE_LEN ;
 scalar_t__ os_memcmp (int ,int const*,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_process_registrar_nonce(struct wps_data *wps, const u8 *r_nonce)
{
 if (r_nonce == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Registrar Nonce received");
  return -1;
 }

 if (os_memcmp(wps->nonce_r, r_nonce, WPS_NONCE_LEN) != 0) {
  wpa_printf(MSG_DEBUG, "WPS: Invalid Registrar Nonce received");
  return -1;
 }

 return 0;
}
