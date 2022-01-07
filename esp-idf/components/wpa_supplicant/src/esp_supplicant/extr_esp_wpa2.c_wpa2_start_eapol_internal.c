
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct eap_sm {int dummy; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 int ETH_P_EAPOL ;
 int IEEE802_1X_TYPE_EAPOL_START ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WPA2_ENT_EAP_STATE_IN_PROGRESS ;
 int WPA_ERR_INVALID_BSSID ;
 int esp_wifi_get_assoc_bssid_internal (int *) ;
 struct eap_sm* gEapSm ;
 int wpa2_set_eap_state (int ) ;
 int * wpa2_sm_alloc_eapol (struct eap_sm*,int ,int *,int ,size_t*,int *) ;
 int wpa2_sm_ether_send (struct eap_sm*,int *,int ,int *,size_t) ;
 int wpa2_sm_free_eapol (int *) ;
 int wpa_printf (int ,char*) ;
 scalar_t__ wpa_sta_is_cur_pmksa_set () ;

__attribute__((used)) static int wpa2_start_eapol_internal(void)
{
    struct eap_sm *sm = gEapSm;
    int ret = 0;
    u8 bssid[6];
    u8 *buf;
    size_t len;

    if (!sm) {
        return ESP_FAIL;
    }
    if (wpa_sta_is_cur_pmksa_set()) {
        wpa_printf(MSG_DEBUG,
                "RSN: PMKSA caching - do not send EAPOL-Start");
        return ESP_FAIL;
    }

    ret = esp_wifi_get_assoc_bssid_internal(bssid);
    if (ret != 0) {
        wpa_printf(MSG_ERROR, "bssid is empty!");
        return WPA_ERR_INVALID_BSSID;
    }

    buf = wpa2_sm_alloc_eapol(sm, IEEE802_1X_TYPE_EAPOL_START, (u8 *)"", 0, &len, ((void*)0));
    if (!buf) {
        return ESP_FAIL;
    }

    wpa2_set_eap_state(WPA2_ENT_EAP_STATE_IN_PROGRESS);
    wpa2_sm_ether_send(sm, bssid, ETH_P_EAPOL, buf, len);
    wpa2_sm_free_eapol(buf);
    return ESP_OK;
}
