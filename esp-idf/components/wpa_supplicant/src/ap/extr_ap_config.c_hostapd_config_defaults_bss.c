
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_bss_config {int auth_algs; int wep_rekeying_period; int broadcast_key_idx_min; int broadcast_key_idx_max; int wpa_group_rekey; int wpa_gmk_rekey; int dtim_period; int ap_max_inactivity; int max_listen_interval; int assoc_sa_query_max_timeout; int assoc_sa_query_retry_timeout; int eap_fast_prov; int pac_key_lifetime; int pac_key_refresh_time; int wmm_enabled; int ft_over_ds; int eapol_version; int max_num_sta; scalar_t__ rsn_pairwise; void* wpa_group; void* wpa_pairwise; int wpa_key_mgmt; } ;


 int EAPOL_VERSION ;
 int MAX_STA_COUNT ;
 int WPA_AUTH_ALG_OPEN ;
 int WPA_AUTH_ALG_SHARED ;
 void* WPA_CIPHER_TKIP ;
 int WPA_KEY_MGMT_PSK ;

void hostapd_config_defaults_bss(struct hostapd_bss_config *bss)
{
    bss->auth_algs = WPA_AUTH_ALG_OPEN | WPA_AUTH_ALG_SHARED;

    bss->wep_rekeying_period = 300;

    bss->broadcast_key_idx_min = 1;
    bss->broadcast_key_idx_max = 2;

    bss->wpa_group_rekey = 600;
    bss->wpa_gmk_rekey = 86400;
    bss->wpa_key_mgmt = WPA_KEY_MGMT_PSK;
    bss->wpa_pairwise = WPA_CIPHER_TKIP;
    bss->wpa_group = WPA_CIPHER_TKIP;
    bss->rsn_pairwise = 0;

    bss->max_num_sta = MAX_STA_COUNT;

    bss->dtim_period = 2;

    bss->ap_max_inactivity = 5*60;
    bss->eapol_version = EAPOL_VERSION;

    bss->max_listen_interval = 65535;
    bss->wmm_enabled = -1;





}
