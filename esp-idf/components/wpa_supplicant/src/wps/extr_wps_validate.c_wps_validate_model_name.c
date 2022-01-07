
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int MSG_INFO ;
 int wpa_hexdump_ascii (int ,char*,scalar_t__ const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_validate_model_name(const u8 *model_name, size_t len,
       int mandatory)
{
 if (model_name == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Model Name "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 if (len > 0 && model_name[len - 1] == 0) {
  wpa_hexdump_ascii(MSG_INFO, "WPS-STRICT: Invalid Model Name "
      "attribute value", model_name, len);
  return -1;
 }
 return 0;
}
