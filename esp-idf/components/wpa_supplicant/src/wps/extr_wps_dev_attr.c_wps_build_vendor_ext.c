
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_device_data {int ** vendor_ext; } ;
struct wpabuf {int dummy; } ;


 int ATTR_VENDOR_EXT ;
 int MAX_WPS_VENDOR_EXTENSIONS ;
 int MSG_DEBUG ;
 int wpa_hexdump (int ,char*,int ,int ) ;
 int wpabuf_head_u8 (int *) ;
 int wpabuf_len (int *) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_buf (struct wpabuf*,int *) ;

int wps_build_vendor_ext(struct wps_device_data *dev, struct wpabuf *msg)
{
 int i;

 for (i = 0; i < MAX_WPS_VENDOR_EXTENSIONS; i++) {
  if (dev->vendor_ext[i] == ((void*)0))
   continue;
  wpa_hexdump(MSG_DEBUG, "WPS:  * Vendor Extension",
       wpabuf_head_u8(dev->vendor_ext[i]),
       wpabuf_len(dev->vendor_ext[i]));
  wpabuf_put_be16(msg, ATTR_VENDOR_EXT);
  wpabuf_put_be16(msg, wpabuf_len(dev->vendor_ext[i]));
  wpabuf_put_buf(msg, dev->vendor_ext[i]);
 }

 return 0;
}
