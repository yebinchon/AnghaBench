
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_device_data {char* device_name; } ;


 int MSG_DEBUG ;
 int os_free (char*) ;
 scalar_t__ os_malloc (size_t) ;
 int os_memcpy (char*,int const*,size_t) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_process_dev_name(struct wps_device_data *dev, const u8 *str,
    size_t str_len)
{
 if (str == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Device Name received");
  return -1;
 }

 wpa_hexdump_ascii(MSG_DEBUG, "WPS: Device Name", str, str_len);

 os_free(dev->device_name);
 dev->device_name = (char *)os_malloc(str_len + 1);
 if (dev->device_name == ((void*)0))
  return -1;
 os_memcpy(dev->device_name, str, str_len);
 dev->device_name[str_len] = '\0';

 return 0;
}
