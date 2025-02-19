
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_registrar {int sel_reg_union; } ;
struct wpabuf {int dummy; } ;


 int ATTR_SELECTED_REGISTRAR ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static int wps_build_selected_registrar(struct wps_registrar *reg,
     struct wpabuf *msg)
{
 if (!reg->sel_reg_union)
  return 0;
 wpa_printf(MSG_DEBUG, "WPS:  * Selected Registrar");
 wpabuf_put_be16(msg, ATTR_SELECTED_REGISTRAR);
 wpabuf_put_be16(msg, 1);
 wpabuf_put_u8(msg, 1);
 return 0;
}
