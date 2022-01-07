
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_process_wps_state(struct wps_data *wps, const u8 *state)
{
 if (state == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Wi-Fi Protected Setup State "
      "received");
  return -1;
 }

 wpa_printf(MSG_DEBUG, "WPS: Enrollee Wi-Fi Protected Setup State %d",
     *state);

 return 0;
}
