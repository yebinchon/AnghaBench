
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa2_funcs {int wpa2_deinit; int wpa2_init; int wpa2_start; int wpa2_sm_rx_eapol; } ;
typedef int esp_err_t ;


 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int WPA2_VERSION ;
 scalar_t__ eap_peer_register_methods () ;
 int eap_peer_sm_deinit ;
 int eap_peer_sm_init ;
 int esp_wifi_register_wpa2_cb_internal (struct wpa2_funcs*) ;
 scalar_t__ os_zalloc (int) ;
 int wpa2_ent_rx_eapol ;
 int wpa2_start_eapol ;
 int wpa_printf (int ,char*,...) ;

esp_err_t esp_wifi_sta_wpa2_ent_enable_fn(void *arg)
{
    struct wpa2_funcs *wpa2_cb;

    wpa_printf(MSG_INFO, "WPA2 ENTERPRISE VERSION: [%s] enable\n",
               WPA2_VERSION);

    wpa2_cb = (struct wpa2_funcs *)os_zalloc(sizeof(struct wpa2_funcs));
    if (wpa2_cb == ((void*)0)) {
        wpa_printf(MSG_ERROR, "WPA2: no mem for wpa2 cb\n");
        return ESP_ERR_NO_MEM;
    }

    wpa2_cb->wpa2_sm_rx_eapol = wpa2_ent_rx_eapol;
    wpa2_cb->wpa2_start = wpa2_start_eapol;
    wpa2_cb->wpa2_init = eap_peer_sm_init;
    wpa2_cb->wpa2_deinit = eap_peer_sm_deinit;

    esp_wifi_register_wpa2_cb_internal(wpa2_cb);

    wpa_printf(MSG_DEBUG, "WPA2 ENTERPRISE CRYPTO INIT.\r\n");






    return ESP_OK;
}
