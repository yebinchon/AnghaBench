
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct wps_data {int encr_type; TYPE_1__* wps; } ;
struct TYPE_2__ {int encr_types; } ;


 int MSG_DEBUG ;
 int WPA_GET_BE16 (int const*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_process_encr_type_flags(struct wps_data *wps, const u8 *encr)
{
 u16 encr_types;

 if (encr == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Encryption Type flags "
      "received");
  return -1;
 }

 encr_types = WPA_GET_BE16(encr);

 wpa_printf(MSG_DEBUG, "WPS: Enrollee Encryption Type flags 0x%x",
     encr_types);
 wps->encr_type = wps->wps->encr_types & encr_types;
 if (wps->encr_type == 0) {
  wpa_printf(MSG_DEBUG, "WPS: No match in supported "
      "encryption types (own 0x%x Enrollee 0x%x)",
      wps->wps->encr_types, encr_types);
  return -1;

 }

 return 0;
}
