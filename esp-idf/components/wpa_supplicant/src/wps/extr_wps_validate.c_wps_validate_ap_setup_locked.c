
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_INFO ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_validate_ap_setup_locked(const u8 *ap_setup_locked,
     int mandatory)
{
 if (ap_setup_locked == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: AP Setup Locked "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 if (*ap_setup_locked > 1) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid AP Setup Locked "
      "attribute value 0x%x", *ap_setup_locked);
  return -1;
 }
 return 0;
}
