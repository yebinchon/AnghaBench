
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {scalar_t__* selected_registrar; int authorized_macs_len; int authorized_macs; int * version2; int rf_bands; int uuid_e; int sel_reg_config_methods; int dev_password_id; int ap_setup_locked; int wps_state; int version; } ;
struct wpabuf {int dummy; } ;


 int MSG_INFO ;
 int os_free (struct wps_parse_attr*) ;
 scalar_t__ os_zalloc (int) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 scalar_t__ wps_validate_ap_setup_locked (int ,int ) ;
 scalar_t__ wps_validate_authorized_macs (int ,int ,int ) ;
 scalar_t__ wps_validate_dev_password_id (int ,int) ;
 scalar_t__ wps_validate_rf_bands (int ,int ) ;
 scalar_t__ wps_validate_sel_reg_config_methods (int ,int,int) ;
 scalar_t__ wps_validate_selected_registrar (scalar_t__*,int ) ;
 scalar_t__ wps_validate_uuid_e (int ,int ) ;
 scalar_t__ wps_validate_version (int ,int) ;
 scalar_t__ wps_validate_version2 (int *,int) ;
 scalar_t__ wps_validate_wps_state (int ,int) ;

int wps_validate_beacon(const struct wpabuf *wps_ie)
{
 struct wps_parse_attr *attr;
 int wps2, sel_reg;
 int ret;

 attr = (struct wps_parse_attr *)os_zalloc(sizeof(struct wps_parse_attr));
 if (attr == ((void*)0)) {
  ret = -99;
  goto _out;
 }

 if (wps_ie == ((void*)0)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: No WPS IE in Beacon frame");
  ret = -1;
  goto _out;
 }
 if (wps_parse_msg(wps_ie, attr) < 0) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Failed to parse WPS IE in "
      "Beacon frame");
  ret = -1;
  goto _out;
 }

 wps2 = attr->version2 != ((void*)0);
 sel_reg = attr->selected_registrar != ((void*)0) &&
  *attr->selected_registrar != 0;
 if (wps_validate_version(attr->version, 1) ||
     wps_validate_wps_state(attr->wps_state, 1) ||
     wps_validate_ap_setup_locked(attr->ap_setup_locked, 0) ||
     wps_validate_selected_registrar(attr->selected_registrar, 0) ||
     wps_validate_dev_password_id(attr->dev_password_id, sel_reg) ||
     wps_validate_sel_reg_config_methods(attr->sel_reg_config_methods,
      wps2, sel_reg) ||
     wps_validate_uuid_e(attr->uuid_e, 0) ||
     wps_validate_rf_bands(attr->rf_bands, 0) ||
     wps_validate_version2(attr->version2, wps2) ||
     wps_validate_authorized_macs(attr->authorized_macs,
      attr->authorized_macs_len, 0)) {
  wpa_printf(MSG_INFO, "WPS-STRICT: Invalid Beacon frame");
  ret = -1;
  goto _out;
 }

 ret = 0;
_out:
 if (attr)
  os_free(attr);

 return ret;
}
