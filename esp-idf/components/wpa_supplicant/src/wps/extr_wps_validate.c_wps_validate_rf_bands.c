
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSG_INFO ;
 int const WPS_RF_24GHZ ;
 int const WPS_RF_50GHZ ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_validate_rf_bands(const u8 *rf_bands, int mandatory)
{
 if (rf_bands == ((void*)0)) {
  if (mandatory) {
   wpa_printf(MSG_INFO, "WPS-STRICT: RF Bands "
       "attribute missing");
   return -1;
  }
  return 0;
 }
 if (*rf_bands != WPS_RF_24GHZ && *rf_bands != WPS_RF_50GHZ &&
     *rf_bands != (WPS_RF_24GHZ | WPS_RF_50GHZ)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Rf Bands "
      "attribute value 0x%x", *rf_bands);
  return -1;
 }
 return 0;
}
