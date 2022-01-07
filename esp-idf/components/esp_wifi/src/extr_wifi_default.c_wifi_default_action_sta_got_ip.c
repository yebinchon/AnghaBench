
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int esp_event_base_t ;


 int ESP_LOGD (int ,char*) ;
 int ESP_LOGI (int ,char*,int) ;
 int ESP_OK ;
 int TAG ;
 size_t WIFI_IF_STA ;
 int esp_netif_action_got_ip (int *,int ,int ,void*) ;
 int esp_wifi_internal_set_sta_ip () ;
 int ** s_wifi_netifs ;

__attribute__((used)) static void wifi_default_action_sta_got_ip(void *arg, esp_event_base_t base, int32_t event_id, void *data)
{
    if (s_wifi_netifs[WIFI_IF_STA] != ((void*)0)) {
        ESP_LOGD(TAG, "Got IP wifi default handler entered");
        int ret = esp_wifi_internal_set_sta_ip();
        if (ret != ESP_OK) {
            ESP_LOGI(TAG, "esp_wifi_internal_set_sta_ip failed with %d", ret);
        }
        esp_netif_action_got_ip(s_wifi_netifs[WIFI_IF_STA], base, event_id, data);
    }
}
