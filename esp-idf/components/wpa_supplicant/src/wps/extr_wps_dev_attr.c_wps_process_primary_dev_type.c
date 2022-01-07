
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_device_data {int pri_dev_type; } ;


 int MSG_DEBUG ;
 int WPS_DEV_TYPE_LEN ;
 int os_memcpy (int ,int const*,int ) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_process_primary_dev_type(struct wps_device_data *dev,
     const u8 *dev_type)
{
 if (dev_type == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Primary Device Type received");
  return -1;
 }

 os_memcpy(dev->pri_dev_type, dev_type, WPS_DEV_TYPE_LEN);

 return 0;
}
