
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;


 int ATTR_UUID_E ;
 int MSG_DEBUG ;
 int WPS_UUID_LEN ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,int const*,int ) ;

int wps_build_uuid_e(struct wpabuf *msg, const u8 *uuid)
{
 wpa_printf(MSG_DEBUG, "WPS:  * UUID-E");
 wpabuf_put_be16(msg, ATTR_UUID_E);
 wpabuf_put_be16(msg, WPS_UUID_LEN);
 wpabuf_put_data(msg, uuid, WPS_UUID_LEN);
 return 0;
}
