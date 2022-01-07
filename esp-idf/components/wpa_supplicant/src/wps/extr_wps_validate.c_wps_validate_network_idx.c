
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_INFO ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_validate_network_idx(const u8 *idx, int mandatory)
{
 if (idx == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: Network Index "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 return 0;
}
