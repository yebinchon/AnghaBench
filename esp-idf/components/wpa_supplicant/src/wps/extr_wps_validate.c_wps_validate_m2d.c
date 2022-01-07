
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {int * version2; int os_version; int config_error; int assoc_state; int rf_bands; int dev_name_len; int dev_name; int primary_dev_type; int serial_number_len; int serial_number; int model_number_len; int model_number; int model_name_len; int model_name; int manufacturer_len; int manufacturer; int config_methods; int conn_type_flags; int encr_type_flags; int auth_type_flags; int uuid_r; int registrar_nonce; int enrollee_nonce; int msg_type; int version; } ;
struct wpabuf {int dummy; } ;


 int MSG_INFO ;
 int os_free (struct wps_parse_attr*) ;
 scalar_t__ os_zalloc (int) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 scalar_t__ wps_validate_assoc_state (int ,int) ;
 scalar_t__ wps_validate_auth_type_flags (int ,int) ;
 scalar_t__ wps_validate_config_error (int ,int) ;
 scalar_t__ wps_validate_config_methods (int ,int,int) ;
 scalar_t__ wps_validate_conn_type_flags (int ,int) ;
 scalar_t__ wps_validate_dev_name (int ,int ,int) ;
 scalar_t__ wps_validate_encr_type_flags (int ,int) ;
 scalar_t__ wps_validate_enrollee_nonce (int ,int) ;
 scalar_t__ wps_validate_manufacturer (int ,int ,int) ;
 scalar_t__ wps_validate_model_name (int ,int ,int) ;
 scalar_t__ wps_validate_model_number (int ,int ,int) ;
 scalar_t__ wps_validate_msg_type (int ,int) ;
 scalar_t__ wps_validate_os_version (int ,int) ;
 scalar_t__ wps_validate_primary_dev_type (int ,int) ;
 scalar_t__ wps_validate_registrar_nonce (int ,int) ;
 scalar_t__ wps_validate_rf_bands (int ,int) ;
 scalar_t__ wps_validate_serial_number (int ,int ,int) ;
 scalar_t__ wps_validate_uuid_r (int ,int) ;
 scalar_t__ wps_validate_version (int ,int) ;
 scalar_t__ wps_validate_version2 (int *,int) ;

int wps_validate_m2d(const struct wpabuf *tlvs)
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
  wpa_printf(MSG_INFO, "WPS-STRICT: No TLVs in M2D");
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(tlvs, attr) < 0) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Failed to parse attributes "
      "in M2D");
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != ((void*)0);
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_msg_type(attr->msg_type, 1) ||
     wps_validate_enrollee_nonce(attr->enrollee_nonce, 1) ||
     wps_validate_registrar_nonce(attr->registrar_nonce, 1) ||
     wps_validate_uuid_r(attr->uuid_r, 1) ||
     wps_validate_auth_type_flags(attr->auth_type_flags, 1) ||
     wps_validate_encr_type_flags(attr->encr_type_flags, 1) ||
     wps_validate_conn_type_flags(attr->conn_type_flags, 1) ||
     wps_validate_config_methods(attr->config_methods, wps2, 1) ||
     wps_validate_manufacturer(attr->manufacturer, attr->manufacturer_len,
          1) ||
     wps_validate_model_name(attr->model_name, attr->model_name_len, 1) ||
     wps_validate_model_number(attr->model_number, attr->model_number_len,
          1) ||
     wps_validate_serial_number(attr->serial_number,
           attr->serial_number_len, 1) ||
     wps_validate_primary_dev_type(attr->primary_dev_type, 1) ||
     wps_validate_dev_name(attr->dev_name, attr->dev_name_len, 1) ||
     wps_validate_rf_bands(attr->rf_bands, 1) ||
     wps_validate_assoc_state(attr->assoc_state, 1) ||
     wps_validate_config_error(attr->config_error, 1) ||
     wps_validate_os_version(attr->os_version, 1) ||
     wps_validate_version2(attr->version2, wps2)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid M2D");






  ret = -1;
  goto _out;

 }

 ret = 0;
_out:
 if (attr)
  os_free(attr);

 return ret;
}
