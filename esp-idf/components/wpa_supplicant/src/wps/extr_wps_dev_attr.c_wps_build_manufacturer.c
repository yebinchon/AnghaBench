
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_device_data {scalar_t__ manufacturer; } ;
struct wpabuf {int dummy; } ;


 size_t ATTR_MANUFACTURER ;
 int MSG_DEBUG ;
 size_t os_strlen (scalar_t__) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,size_t) ;
 int wpabuf_put_data (struct wpabuf*,scalar_t__,size_t) ;
 int wpabuf_put_u8 (struct wpabuf*,char) ;

int wps_build_manufacturer(struct wps_device_data *dev, struct wpabuf *msg)
{
 size_t len;
 wpa_printf(MSG_DEBUG, "WPS:  * Manufacturer");
 wpabuf_put_be16(msg, ATTR_MANUFACTURER);
 len = dev->manufacturer ? os_strlen(dev->manufacturer) : 0;

 if (len == 0) {





  wpabuf_put_be16(msg, 1);
  wpabuf_put_u8(msg, ' ');
  return 0;
 }

 wpabuf_put_be16(msg, len);
 wpabuf_put_data(msg, dev->manufacturer, len);
 return 0;
}
