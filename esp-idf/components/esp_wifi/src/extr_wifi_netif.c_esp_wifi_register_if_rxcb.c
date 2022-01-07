
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * wifi_rxcb_t ;
typedef TYPE_2__* wifi_netif_driver_t ;
typedef size_t wifi_interface_t ;
typedef int esp_netif_receive_t ;
typedef void* esp_err_t ;
struct TYPE_4__ {void* netif; } ;
struct TYPE_5__ {size_t wifi_if; TYPE_1__ base; } ;


 void* ESP_ERR_INVALID_ARG ;
 void* ESP_ERR_INVALID_STATE ;
 void* ESP_ERR_NOT_SUPPORTED ;
 int ESP_LOGE (int ,char*,size_t,...) ;
 void* ESP_OK ;
 int TAG ;


 void* esp_wifi_internal_reg_rxcb (size_t,int *) ;
 void** s_wifi_netifs ;
 int * s_wifi_rxcbs ;
 int * wifi_ap_receive ;
 int * wifi_sta_receive ;

esp_err_t esp_wifi_register_if_rxcb(wifi_netif_driver_t ifx, esp_netif_receive_t fn, void * arg)
{
    if (ifx->base.netif != arg) {
        ESP_LOGE(TAG, "Invalid argument: supplied netif=%p does not equal to interface netif=%p", arg, ifx->base.netif);
        return ESP_ERR_INVALID_ARG;
    }
    wifi_interface_t wifi_interface = ifx->wifi_if;
    s_wifi_rxcbs[wifi_interface] = fn;
    wifi_rxcb_t rxcb = ((void*)0);
    esp_err_t ret;

    switch (wifi_interface)
    {
    case 128:
        rxcb = wifi_sta_receive;
        break;

    case 129:
        rxcb = wifi_ap_receive;
        break;

    default:
        break;
    }

    if (rxcb == ((void*)0)) {
        ESP_LOGE(TAG, "Unknown wifi interface id if=%d", wifi_interface);
        return ESP_ERR_NOT_SUPPORTED;
    }

    if ((ret = esp_wifi_internal_reg_rxcb(wifi_interface, rxcb)) != ESP_OK) {
        ESP_LOGE(TAG, "esp_wifi_internal_reg_rxcb for if=%d failed with %d", wifi_interface, ret);
        return ESP_ERR_INVALID_STATE;
    }

    s_wifi_netifs[wifi_interface] = ifx->base.netif;
    return ESP_OK;
}
