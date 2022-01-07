
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* wifi_netif_driver_t ;
typedef int esp_netif_t ;
struct TYPE_7__ {int driver_free_rx_buffer; int transmit; TYPE_2__* handle; } ;
typedef TYPE_3__ esp_netif_driver_ifconfig_t ;
typedef int esp_err_t ;
struct TYPE_5__ {int * netif; } ;
struct TYPE_6__ {TYPE_1__ base; } ;


 int esp_netif_set_driver_config (int *,TYPE_3__*) ;
 int wifi_free ;
 int wifi_transmit ;

__attribute__((used)) static esp_err_t wifi_driver_start(esp_netif_t * esp_netif, void * args)
{
    wifi_netif_driver_t driver = args;
    driver->base.netif = esp_netif;
    esp_netif_driver_ifconfig_t driver_ifconfig = {
            .handle = driver,
            .transmit = wifi_transmit,
            .driver_free_rx_buffer = wifi_free
    };

    return esp_netif_set_driver_config(esp_netif, &driver_ifconfig);
}
