
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_INFO ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_validate_selected_registrar(const u8 *selected_registrar,
        int mandatory)
{
 if (selected_registrar == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Selected Registrar "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 if (*selected_registrar > 1) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Selected Registrar "
      "attribute value 0x%x", *selected_registrar);
  return -1;
 }
 return 0;
}
