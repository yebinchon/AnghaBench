
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_sm {int wps_eapol_start_timer; } ;


 int ESP_ERR_NO_MEM ;
 int ESP_FAIL ;
 int ESP_OK ;
 int ETH_P_EAPOL ;
 int IEEE802_1X_TYPE_EAPOL_START ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int esp_wifi_get_assoc_bssid_internal (int *) ;
 int ets_timer_arm (int *,int,int ) ;
 struct wps_sm* gWpsSm ;
 int wpa_printf (int ,char*) ;
 int * wps_sm_alloc_eapol (struct wps_sm*,int ,int *,int ,size_t*,int *) ;
 int wps_sm_ether_send (struct wps_sm*,int *,int ,int *,int) ;
 int wps_sm_free_eapol (int *) ;

int wps_tx_start(void)
{
    struct wps_sm *sm = gWpsSm;
    u8 bssid[6];
    u8 *buf;
    int len;
    int ret = 0;

    ret = esp_wifi_get_assoc_bssid_internal(bssid);
    if (ret != 0) {
        wpa_printf(MSG_ERROR, "bssid is empty!");
        return ret;
    }

    if (!sm) {
        return ESP_FAIL;
    }

    wpa_printf(MSG_DEBUG, "WPS: Send EAPOL START.");
    buf = wps_sm_alloc_eapol(sm, IEEE802_1X_TYPE_EAPOL_START, (u8 *)"", 0, (size_t *)&len, ((void*)0));
    if (!buf) {
        return ESP_ERR_NO_MEM;
    }

    wps_sm_ether_send(sm, bssid, ETH_P_EAPOL, buf, len);
    wps_sm_free_eapol(buf);

    ets_timer_arm(&sm->wps_eapol_start_timer, 3000, 0);

    return ESP_OK;
}
