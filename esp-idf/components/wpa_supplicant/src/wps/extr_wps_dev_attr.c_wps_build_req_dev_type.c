
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_device_data {int dummy; } ;
struct wpabuf {int dummy; } ;


 unsigned int ATTR_REQUESTED_DEV_TYPE ;
 int MSG_DEBUG ;
 unsigned int WPS_DEV_TYPE_LEN ;
 int wpa_hexdump (int ,char*,int const*,unsigned int) ;
 int wpabuf_put_be16 (struct wpabuf*,unsigned int) ;
 int wpabuf_put_data (struct wpabuf*,int const*,unsigned int) ;

int wps_build_req_dev_type(struct wps_device_data *dev, struct wpabuf *msg,
      unsigned int num_req_dev_types,
      const u8 *req_dev_types)
{
 unsigned int i;

 for (i = 0; i < num_req_dev_types; i++) {
  wpa_hexdump(MSG_DEBUG, "WPS: * Requested Device Type",
       req_dev_types + i * WPS_DEV_TYPE_LEN,
       WPS_DEV_TYPE_LEN);
  wpabuf_put_be16(msg, ATTR_REQUESTED_DEV_TYPE);
  wpabuf_put_be16(msg, WPS_DEV_TYPE_LEN);
  wpabuf_put_data(msg, req_dev_types + i * WPS_DEV_TYPE_LEN,
    WPS_DEV_TYPE_LEN);
 }

 return 0;
}
