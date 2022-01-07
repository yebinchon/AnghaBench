
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int MSG_INFO ;
 int WPA_GET_BE16 (int const*) ;
 int WPS_CONFIG_PUSHBUTTON ;
 int wpa_printf (int ,char*,int) ;
 scalar_t__ wps_validate_config_methods (int const*,int,int) ;

__attribute__((used)) static int wps_validate_ap_config_methods(const u8 *config_methods, int wps2,
       int mandatory)
{
 u16 val;

 if (wps_validate_config_methods(config_methods, wps2, mandatory) < 0)
  return -1;
 if (config_methods == ((void*)0))
  return 0;
 val = WPA_GET_BE16(config_methods);
 if (val & WPS_CONFIG_PUSHBUTTON) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Configuration "
      "Methods attribute value 0x%04x in AP info "
      "(PushButton not allowed for registering new ER)",
      val);
  return -1;
 }
 return 0;
}
