
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_device_data {char* manufacturer; } ;


 int MSG_DEBUG ;
 int os_free (char*) ;
 scalar_t__ os_malloc (size_t) ;
 int os_memcpy (char*,int const*,size_t) ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int wps_process_manufacturer(struct wps_device_data *dev, const u8 *str,
        size_t str_len)
{
 if (str == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: No Manufacturer received");
  return -1;
 }

 wpa_hexdump_ascii(MSG_DEBUG, "WPS: Manufacturer", str, str_len);

 os_free(dev->manufacturer);
 dev->manufacturer = (char *)os_malloc(str_len + 1);
 if (dev->manufacturer == ((void*)0))
  return -1;
 os_memcpy(dev->manufacturer, str, str_len);
 dev->manufacturer[str_len] = '\0';

 return 0;
}
