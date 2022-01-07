
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_INFO ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_validate_public_key(const u8 *public_key, size_t len,
       int mandatory)
{
 if (public_key == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Public Key "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 if (len != 192) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Public Key "
      "attribute length %d", (int) len);
  return -1;
 }
 return 0;
}
