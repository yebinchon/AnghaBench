
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {int key_wrap_auth; int num_cred; int cred_len; int cred; int mac_addr; int network_key_idx; int encr_type; int auth_type; int ssid_len; int ssid; } ;
struct wpabuf {int dummy; } ;


 int MSG_INFO ;
 int os_free (struct wps_parse_attr*) ;
 scalar_t__ os_zalloc (int) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 scalar_t__ wps_validate_auth_type (int ,int) ;
 scalar_t__ wps_validate_credential (int ,int ,int ,int) ;
 scalar_t__ wps_validate_encr_type (int ,int) ;
 scalar_t__ wps_validate_key_wrap_auth (int ,int) ;
 scalar_t__ wps_validate_mac_addr (int ,int) ;
 scalar_t__ wps_validate_network_key_index (int ,int ) ;
 scalar_t__ wps_validate_ssid (int ,int ,int) ;

int wps_validate_m8_encr(const struct wpabuf *tlvs, int ap, int wps2)
{
 struct wps_parse_attr *attr;
 int ret;

 attr = (struct wps_parse_attr *)os_zalloc(sizeof(struct wps_parse_attr));
 if (attr == ((void*)0)) {
  ret = -99;
  goto _out;
 }

 if (tlvs == ((void*)0)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: No TLVs in M8 encrypted "
      "settings");
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Failed to parse attributes "
      "in M8 encrypted settings");
  ret = -1;
  goto _out;
 }

 if (wps_validate_ssid(attr->ssid, attr->ssid_len, ap) ||
     wps_validate_auth_type(attr->auth_type, ap) ||
     wps_validate_encr_type(attr->encr_type, ap) ||
     wps_validate_network_key_index(attr->network_key_idx, 0) ||
     wps_validate_mac_addr(attr->mac_addr, ap) ||
     wps_validate_credential(attr->cred, attr->cred_len, attr->num_cred,
        !ap) ||
     wps_validate_key_wrap_auth(attr->key_wrap_auth, 1)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid M8 encrypted "
      "settings");






  ret = -1;
  goto _out;

 }

 ret = 0;
_out:
 if (attr)
  os_free(attr);

 return ret;
}
