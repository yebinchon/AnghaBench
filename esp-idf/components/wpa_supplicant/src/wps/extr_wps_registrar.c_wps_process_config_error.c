
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wps_data {int dummy; } ;


 int MSG_DEBUG ;
 int WPA_GET_BE16 (int const*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_process_config_error(struct wps_data *wps, const u8 *err)
{
 u16 e;

 if (err == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Configuration Error received");
  return -1;
 }

 e = WPA_GET_BE16(err);
 wpa_printf(MSG_DEBUG, "WPS: Enrollee Configuration Error %d", e);

 return 0;
}
