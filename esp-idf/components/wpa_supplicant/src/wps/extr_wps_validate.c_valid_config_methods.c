
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int MSG_INFO ;
 int WPS_CONFIG_DISPLAY ;
 int WPS_CONFIG_PUSHBUTTON ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int valid_config_methods(u16 val, int wps2)
{
 if (wps2) {
  if (!(val & 0x6000) && (val & WPS_CONFIG_DISPLAY)) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Display flag "
       "without Physical/Virtual Display flag");
   return 0;
  }
  if (!(val & 0x0600) && (val & WPS_CONFIG_PUSHBUTTON)) {
   wpa_printf(MSG_INFO, "WPS-STRICT: PushButton flag "
       "without Physical/Virtual PushButton flag");
   return 0;
  }
 }

 return 1;
}
