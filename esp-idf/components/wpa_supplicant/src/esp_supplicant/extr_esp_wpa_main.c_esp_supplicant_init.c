
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_funcs {int wpa_michael_mic_failure; int * wpa_config_bss; int wpa_parse_wpa_ie; int wpa_config_parse_string; int wpa_ap_deinit; int wpa_ap_init; int wpa_ap_rx_eapol; int wpa_ap_get_wpa_ie; int wpa_ap_remove; int wpa_ap_join; int wpa_sta_in_4way_handshake; int wpa_sta_connect; int wpa_sta_rx_eapol; int wpa_sta_deinit; int wpa_sta_init; } ;


 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int esp_wifi_register_wpa_cb_internal (struct wpa_funcs*) ;
 int hostap_deinit ;
 int hostap_init ;
 scalar_t__ os_malloc (int) ;
 int wpa_ap_get_wpa_ie ;
 int wpa_ap_join ;
 int wpa_ap_remove ;
 int wpa_ap_rx_eapol ;
 int wpa_attach ;
 int wpa_config_parse_string ;
 int wpa_deattach ;
 int wpa_michael_mic_failure ;
 int wpa_parse_wpa_ie_wrapper ;
 int wpa_sm_rx_eapol ;
 int wpa_sta_connect ;
 int wpa_sta_in_4way_handshake ;

int esp_supplicant_init(void)
{
    struct wpa_funcs *wpa_cb;

    wpa_cb = (struct wpa_funcs *)os_malloc(sizeof(struct wpa_funcs));
    if (!wpa_cb) {
        return ESP_ERR_NO_MEM;
    }

    wpa_cb->wpa_sta_init = wpa_attach;
    wpa_cb->wpa_sta_deinit = wpa_deattach;
    wpa_cb->wpa_sta_rx_eapol = wpa_sm_rx_eapol;
    wpa_cb->wpa_sta_connect = wpa_sta_connect;
    wpa_cb->wpa_sta_in_4way_handshake = wpa_sta_in_4way_handshake;

    wpa_cb->wpa_ap_join = wpa_ap_join;
    wpa_cb->wpa_ap_remove = wpa_ap_remove;
    wpa_cb->wpa_ap_get_wpa_ie = wpa_ap_get_wpa_ie;
    wpa_cb->wpa_ap_rx_eapol = wpa_ap_rx_eapol;
    wpa_cb->wpa_ap_init = hostap_init;
    wpa_cb->wpa_ap_deinit = hostap_deinit;

    wpa_cb->wpa_config_parse_string = wpa_config_parse_string;
    wpa_cb->wpa_parse_wpa_ie = wpa_parse_wpa_ie_wrapper;
    wpa_cb->wpa_config_bss = ((void*)0);
    wpa_cb->wpa_michael_mic_failure = wpa_michael_mic_failure;

    esp_wifi_register_wpa_cb_internal(wpa_cb);

    return ESP_OK;
}
