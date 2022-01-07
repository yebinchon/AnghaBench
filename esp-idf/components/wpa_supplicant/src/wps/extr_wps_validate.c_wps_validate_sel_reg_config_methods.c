
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MSG_INFO ;
 int WPA_GET_BE16 (int const*) ;
 int valid_config_methods (int ,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_validate_sel_reg_config_methods(const u8 *config_methods,
            int wps2, int mandatory)
{
 u16 val;

 if (config_methods == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Selected Registrar "
       "Configuration Methods attribute missing");
   return -1;
  }
  return 0;
 }

 val = WPA_GET_BE16(config_methods);
 if (!valid_config_methods(val, wps2)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Selected Registrar "
      "Configuration Methods attribute value 0x%04x",
      val);
  return -1;
 }
 return 0;
}
