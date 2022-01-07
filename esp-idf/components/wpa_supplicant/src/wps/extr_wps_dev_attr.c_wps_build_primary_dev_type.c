
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_device_data {int pri_dev_type; } ;
struct wpabuf {int dummy; } ;


 int ATTR_PRIMARY_DEV_TYPE ;
 int MSG_DEBUG ;
 int WPS_DEV_TYPE_LEN ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,int ,int ) ;

int wps_build_primary_dev_type(struct wps_device_data *dev, struct wpabuf *msg)
{
 wpa_printf(MSG_DEBUG, "WPS:  * Primary Device Type");
 wpabuf_put_be16(msg, ATTR_PRIMARY_DEV_TYPE);
 wpabuf_put_be16(msg, WPS_DEV_TYPE_LEN);
 wpabuf_put_data(msg, dev->pri_dev_type, WPS_DEV_TYPE_LEN);
 return 0;
}
