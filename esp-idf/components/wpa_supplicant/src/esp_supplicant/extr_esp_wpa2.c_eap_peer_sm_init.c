
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int current_identifier; int * ssl_ctx; int ownaddr; } ;


 int ESP_ERR_NO_MEM ;
 int ESP_FAIL ;
 int ESP_OK ;
 int MSG_ERROR ;
 int MSG_INFO ;
 int MSG_WARNING ;
 int SIG_WPA2_MAX ;
 int WIFI_IF_STA ;
 int WPA2_ENT_EAP_STATE_NOT_START ;
 int WPA2_TASK_STACK_SIZE ;
 int eap_peer_blob_deinit (struct eap_sm*) ;
 int eap_peer_blob_init (struct eap_sm*) ;
 int eap_peer_config_deinit (struct eap_sm*) ;
 int eap_peer_config_init (struct eap_sm*,int ,int ) ;
 int eap_peer_sm_deinit () ;
 int esp_wifi_get_macaddr_internal (int ,int ) ;
 struct eap_sm* gEapSm ;
 int g_wpa_private_key_passwd ;
 int g_wpa_private_key_passwd_len ;
 int os_free (struct eap_sm*) ;
 scalar_t__ os_zalloc (int) ;
 int s_wifi_wpa2_sync_sem ;
 int s_wpa2_data_lock ;
 int s_wpa2_queue ;
 int s_wpa2_task_hdl ;
 int * tls_init () ;
 int wpa2_rxq_init () ;
 int wpa2_set_eap_state (int ) ;
 int wpa2_task ;
 int wpa_printf (int ,char*,...) ;
 int xQueueCreate (int ,int) ;
 int xSemaphoreCreateCounting (int,int ) ;
 int xSemaphoreCreateRecursiveMutex () ;
 int xTaskCreate (int ,char*,int ,int *,int,int ) ;

__attribute__((used)) static int eap_peer_sm_init(void)
{
    int ret = 0;
    struct eap_sm *sm;

    if (gEapSm) {
        wpa_printf(MSG_ERROR, "WPA2: wpa2 sm not null, deinit it");
        eap_peer_sm_deinit();
    }

    sm = (struct eap_sm *)os_zalloc(sizeof(*sm));
    if (sm == ((void*)0)) {
        return ESP_ERR_NO_MEM;
    }

    s_wpa2_data_lock = xSemaphoreCreateRecursiveMutex();
    if (!s_wpa2_data_lock) {
        wpa_printf(MSG_ERROR, "wpa2 eap_peer_sm_init: failed to alloc data lock");
        return ESP_ERR_NO_MEM;
    }

    wpa2_set_eap_state(WPA2_ENT_EAP_STATE_NOT_START);
    sm->current_identifier = 0xff;
    esp_wifi_get_macaddr_internal(WIFI_IF_STA, sm->ownaddr);
    ret = eap_peer_blob_init(sm);
    if (ret) {
        wpa_printf(MSG_ERROR, "eap_peer_blob_init failed\n");
        os_free(sm);
        return ESP_FAIL;
    }

    ret = eap_peer_config_init(sm, g_wpa_private_key_passwd, g_wpa_private_key_passwd_len);
    if (ret) {
        wpa_printf(MSG_ERROR, "eap_peer_config_init failed\n");
        eap_peer_blob_deinit(sm);
        os_free(sm);
        return ESP_FAIL;
    }

    sm->ssl_ctx = tls_init();
    if (sm->ssl_ctx == ((void*)0)) {
        wpa_printf(MSG_WARNING, "SSL: Failed to initialize TLS "
                   "context.");
        eap_peer_blob_deinit(sm);
        eap_peer_config_deinit(sm);
        os_free(sm);
        return ESP_FAIL;
    }

    wpa2_rxq_init();

    gEapSm = sm;
    return ESP_OK;
}
