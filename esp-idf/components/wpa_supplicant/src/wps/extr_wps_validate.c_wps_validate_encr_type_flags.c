
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MSG_INFO ;
 int WPA_GET_BE16 (int const*) ;
 int WPS_ENCR_AES ;
 int WPS_ENCR_TYPES ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_validate_encr_type_flags(const u8 *flags, int mandatory)
{
 u16 val;

 if (flags == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Encryption Type "
       "Flags attribute missing");
   return -1;
  }
  return 0;
 }
 val = WPA_GET_BE16(flags);
 if ((val & ~WPS_ENCR_TYPES) || !(val & WPS_ENCR_AES)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Encryption Type "
      "Flags attribute value 0x%04x", val);
  return -1;
 }
 return 0;
}
