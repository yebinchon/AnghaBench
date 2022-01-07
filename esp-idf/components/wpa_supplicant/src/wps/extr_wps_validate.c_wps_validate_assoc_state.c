
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MSG_INFO ;
 int WPA_GET_BE16 (int const*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_validate_assoc_state(const u8 *assoc_state, int mandatory)
{
 u16 val;
 if (assoc_state == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Association State "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 val = WPA_GET_BE16(assoc_state);
 if (val > 4) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Association State "
      "attribute value 0x%04x", val);
  return -1;
 }
 return 0;
}
