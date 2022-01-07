
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int ETHERNET_EVENT_CONNECTED ;
 int ETHERNET_EVENT_DISCONNECTED ;
 int ETHERNET_EVENT_START ;
 int ETHERNET_EVENT_STOP ;
 int ETH_CHECK (void*,char*,int ,int ) ;
 int ETH_EVENT ;
 int IP_EVENT ;
 int IP_EVENT_ETH_GOT_IP ;
 int esp_event_handler_unregister (int ,int ,int ) ;
 int esp_netif_action_connected ;
 int esp_netif_action_disconnected ;
 int esp_netif_action_got_ip ;
 int esp_netif_action_start ;
 int esp_netif_action_stop ;
 int fail ;

esp_err_t esp_eth_clear_default_handlers(void* esp_netif)
{
    esp_err_t ret;
    ETH_CHECK(esp_netif, "esp-netif handle can't be null", fail, ESP_ERR_INVALID_ARG);

    esp_event_handler_unregister(ETH_EVENT, ETHERNET_EVENT_START, esp_netif_action_start);
    esp_event_handler_unregister(ETH_EVENT, ETHERNET_EVENT_STOP, esp_netif_action_stop);
    esp_event_handler_unregister(ETH_EVENT, ETHERNET_EVENT_CONNECTED, esp_netif_action_connected);
    esp_event_handler_unregister(ETH_EVENT, ETHERNET_EVENT_DISCONNECTED, esp_netif_action_disconnected);
    esp_event_handler_unregister(IP_EVENT, IP_EVENT_ETH_GOT_IP, esp_netif_action_got_ip);
    return ESP_OK;
fail:
    return ret;
}
