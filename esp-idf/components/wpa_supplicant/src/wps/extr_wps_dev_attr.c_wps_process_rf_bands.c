
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_device_data {int rf_bands; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,...) ;

int wps_process_rf_bands(struct wps_device_data *dev, const u8 *bands)
{
 if (bands == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No RF Bands received");
  return -1;
 }

 dev->rf_bands = *bands;
 wpa_printf(MSG_DEBUG, "WPS: Enrollee RF Bands 0x%x", dev->rf_bands);

 return 0;
}
