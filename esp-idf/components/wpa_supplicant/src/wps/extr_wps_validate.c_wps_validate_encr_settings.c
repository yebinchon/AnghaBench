
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_INFO ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_validate_encr_settings(const u8 *encr_settings, size_t len,
       int mandatory)
{
 if (encr_settings == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Encrypted Settings "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 if (len < 16) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Encrypted Settings "
      "attribute length %d", (int) len);
  return -1;
 }
 return 0;
}
