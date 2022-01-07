
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int dev_pw_id; } ;


 int MSG_DEBUG ;
 int WPA_GET_BE16 (int const*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_process_dev_password_id(struct wps_data *wps, const u8 *pw_id)
{
 if (pw_id == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Device Password ID received");
  return -1;
 }

 wps->dev_pw_id = WPA_GET_BE16(pw_id);
 wpa_printf(MSG_DEBUG, "WPS: Device Password ID %d", wps->dev_pw_id);

 return 0;
}
