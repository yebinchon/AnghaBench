
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {int * version2; int registrar_nonce; int enrollee_nonce; int msg_type; int version; } ;
struct wpabuf {int dummy; } ;


 int MSG_INFO ;
 int os_free (struct wps_parse_attr*) ;
 scalar_t__ os_zalloc (int) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 scalar_t__ wps_validate_enrollee_nonce (int ,int) ;
 scalar_t__ wps_validate_msg_type (int ,int) ;
 scalar_t__ wps_validate_registrar_nonce (int ,int) ;
 scalar_t__ wps_validate_version (int ,int) ;
 scalar_t__ wps_validate_version2 (int *,int) ;

int wps_validate_wsc_done(const struct wpabuf *tlvs)
{
 struct wps_parse_attr *attr;
 int wps2;
 int ret;

 attr = (struct wps_parse_attr *)os_zalloc(sizeof(struct wps_parse_attr));
 if (attr == ((void*)0)) {
  ret = -99;
  goto _out;
 }

 if (tlvs == ((void*)0)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: No TLVs in WSC_Done");
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Failed to parse attributes "
      "in WSC_Done");
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != ((void*)0);
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_msg_type(attr->msg_type, 1) ||
     wps_validate_enrollee_nonce(attr->enrollee_nonce, 1) ||
     wps_validate_registrar_nonce(attr->registrar_nonce, 1) ||
     wps_validate_version2(attr->version2, wps2)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid WSC_Done");






  ret = -1;
  goto _out;

 }

 ret = 0;
_out:
 if (attr)
  os_free(attr);

 return ret;
}
