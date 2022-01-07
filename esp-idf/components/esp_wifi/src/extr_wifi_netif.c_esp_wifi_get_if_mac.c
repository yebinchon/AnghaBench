
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* wifi_netif_driver_t ;
typedef int wifi_interface_t ;
typedef int uint8_t ;
typedef int esp_err_t ;
struct TYPE_3__ {int wifi_if; } ;


 int esp_wifi_get_mac (int ,int *) ;

esp_err_t esp_wifi_get_if_mac(wifi_netif_driver_t ifx, uint8_t mac[6])
{
    wifi_interface_t wifi_interface = ifx->wifi_if;

    return esp_wifi_get_mac(wifi_interface, mac);
}
