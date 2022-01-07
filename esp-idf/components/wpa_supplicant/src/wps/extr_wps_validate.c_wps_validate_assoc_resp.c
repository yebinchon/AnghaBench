
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {int * version2; int response_type; int version; } ;
struct wpabuf {int dummy; } ;


 int MSG_INFO ;
 int os_free (struct wps_parse_attr*) ;
 scalar_t__ os_zalloc (int) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 scalar_t__ wps_validate_response_type (int ,int) ;
 scalar_t__ wps_validate_version (int ,int) ;
 scalar_t__ wps_validate_version2 (int *,int) ;

int wps_validate_assoc_resp(const struct wpabuf *wps_ie)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)os_zalloc(sizeof(struct wps_parse_attr));
 if (attr == ((void*)0)) {
  ret = -99;
  goto _out;
 }


 if (wps_ie == ((void*)0)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: No WPS IE in "
      "(Re)Association Response frame");
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(wps_ie, attr) < 0) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Failed to parse WPS IE in "
      "(Re)Association Response frame");
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != ((void*)0);
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_response_type(attr->response_type, 1) ||
     wps_validate_version2(attr->version2, wps2)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid (Re)Association "
      "Response frame");
  ret = -1;
  goto _out;
 }

 ret = 0;
_out:
 if(attr)
  os_free(attr);

 return ret;
}
