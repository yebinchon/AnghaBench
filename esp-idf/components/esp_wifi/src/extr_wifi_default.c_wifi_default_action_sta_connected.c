
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wifi_netif_driver_t ;
typedef int int32_t ;
typedef int esp_netif_t ;
typedef int esp_event_base_t ;
typedef int esp_err_t ;


 int ESP_LOGE (int ,char*,int ,int ) ;
 int ESP_OK ;
 int TAG ;
 size_t WIFI_IF_STA ;
 int esp_netif_action_connected (int *,int ,int ,void*) ;
 int esp_netif_get_io_driver (int *) ;
 int esp_netif_receive ;
 int esp_wifi_is_if_ready_when_started (int ) ;
 int esp_wifi_register_if_rxcb (int ,int ,int *) ;
 int ** s_wifi_netifs ;

__attribute__((used)) static void wifi_default_action_sta_connected(void *arg, esp_event_base_t base, int32_t event_id, void *data)
{
    if (s_wifi_netifs[WIFI_IF_STA] != ((void*)0)) {
        esp_err_t ret;
        esp_netif_t *esp_netif = s_wifi_netifs[WIFI_IF_STA];
        wifi_netif_driver_t driver = esp_netif_get_io_driver(esp_netif);

        if (!esp_wifi_is_if_ready_when_started(driver)) {

            if ((ret = esp_wifi_register_if_rxcb(driver, esp_netif_receive, esp_netif)) != ESP_OK) {
                ESP_LOGE(TAG, "esp_wifi_register_if_rxcb for if=%p failed with %d", driver, ret);
                return;
            }
        }

        esp_netif_action_connected(s_wifi_netifs[WIFI_IF_STA], base, event_id, data);
    }
}
