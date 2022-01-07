
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {int mac_addr; int network_key_len; int network_key; int network_key_idx; int encr_type; int auth_type; int ssid_len; int ssid; } ;
struct wps_credential {int dummy; } ;


 int MSG_DEBUG ;
 int os_memset (struct wps_credential*,int ,int) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wps_process_cred_auth_type (struct wps_credential*,int ) ;
 scalar_t__ wps_process_cred_encr_type (struct wps_credential*,int ) ;
 scalar_t__ wps_process_cred_mac_addr (struct wps_credential*,int ) ;
 scalar_t__ wps_process_cred_network_key (struct wps_credential*,int ,int ) ;
 scalar_t__ wps_process_cred_network_key_idx (struct wps_credential*,int ) ;
 scalar_t__ wps_process_cred_ssid (struct wps_credential*,int ,int ) ;
 int wps_workaround_cred_key (struct wps_credential*) ;

int wps_process_ap_settings(struct wps_parse_attr *attr,
       struct wps_credential *cred)
{
 wpa_printf(MSG_DEBUG, "WPS: Processing AP Settings");
 os_memset(cred, 0, sizeof(*cred));

 if (wps_process_cred_ssid(cred, attr->ssid, attr->ssid_len) ||
     wps_process_cred_auth_type(cred, attr->auth_type) ||
     wps_process_cred_encr_type(cred, attr->encr_type) ||
     wps_process_cred_network_key_idx(cred, attr->network_key_idx) ||
     wps_process_cred_network_key(cred, attr->network_key,
      attr->network_key_len) ||
     wps_process_cred_mac_addr(cred, attr->mac_addr))
  return -1;

 return wps_workaround_cred_key(cred);
}
