
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_parse_attr {int ap_channel; int dot1x_enabled; int key_prov_auto; int eap_identity_len; int eap_identity; int eap_type_len; int eap_type; int mac_addr; int network_key_len; int network_key; int network_key_idx; int encr_type; int auth_type; int ssid_len; int ssid; int network_idx; } ;
struct wps_credential {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wps_process_cred_802_1x_enabled (struct wps_credential*,int ) ;
 scalar_t__ wps_process_cred_ap_channel (struct wps_credential*,int ) ;
 scalar_t__ wps_process_cred_auth_type (struct wps_credential*,int ) ;
 scalar_t__ wps_process_cred_eap_identity (struct wps_credential*,int ,int ) ;
 scalar_t__ wps_process_cred_eap_type (struct wps_credential*,int ,int ) ;
 scalar_t__ wps_process_cred_encr_type (struct wps_credential*,int ) ;
 scalar_t__ wps_process_cred_key_prov_auto (struct wps_credential*,int ) ;
 scalar_t__ wps_process_cred_mac_addr (struct wps_credential*,int ) ;
 scalar_t__ wps_process_cred_network_idx (struct wps_credential*,int ) ;
 scalar_t__ wps_process_cred_network_key (struct wps_credential*,int ,int ) ;
 scalar_t__ wps_process_cred_network_key_idx (struct wps_credential*,int ) ;
 scalar_t__ wps_process_cred_ssid (struct wps_credential*,int ,int ) ;
 int wps_workaround_cred_key (struct wps_credential*) ;

int wps_process_cred(struct wps_parse_attr *attr,
       struct wps_credential *cred)
{
 wpa_printf(MSG_DEBUG, "WPS: Process Credential");


 if (wps_process_cred_network_idx(cred, attr->network_idx) ||
     wps_process_cred_ssid(cred, attr->ssid, attr->ssid_len) ||
     wps_process_cred_auth_type(cred, attr->auth_type) ||
     wps_process_cred_encr_type(cred, attr->encr_type) ||
     wps_process_cred_network_key_idx(cred, attr->network_key_idx) ||
     wps_process_cred_network_key(cred, attr->network_key,
      attr->network_key_len) ||
     wps_process_cred_mac_addr(cred, attr->mac_addr) ||
     wps_process_cred_eap_type(cred, attr->eap_type,
          attr->eap_type_len) ||
     wps_process_cred_eap_identity(cred, attr->eap_identity,
       attr->eap_identity_len) ||
     wps_process_cred_key_prov_auto(cred, attr->key_prov_auto) ||
     wps_process_cred_802_1x_enabled(cred, attr->dot1x_enabled) ||
     wps_process_cred_ap_channel(cred, attr->ap_channel))
  return -1;

 return wps_workaround_cred_key(cred);
}
