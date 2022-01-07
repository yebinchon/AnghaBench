
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_device_data {int rf_bands; } ;
struct wpabuf {int dummy; } ;


 int ATTR_RF_BANDS ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int ) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int ) ;

int wps_build_rf_bands(struct wps_device_data *dev, struct wpabuf *msg)
{
 wpa_printf(MSG_DEBUG, "WPS:  * RF Bands (%x)", dev->rf_bands);
 wpabuf_put_be16(msg, ATTR_RF_BANDS);
 wpabuf_put_be16(msg, 1);
 wpabuf_put_u8(msg, dev->rf_bands);
 return 0;
}
