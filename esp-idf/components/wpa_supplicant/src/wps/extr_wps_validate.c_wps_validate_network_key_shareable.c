
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_INFO ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_validate_network_key_shareable(const u8 *val, int mandatory)
{
 if (val == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Network Key "
       "Shareable attribute missing");
   return -1;
  }
  return 0;
 }
 if (*val > 1) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Network Key "
      "Shareable attribute value 0x%x", *val);
  return -1;
 }
 return 0;
}
