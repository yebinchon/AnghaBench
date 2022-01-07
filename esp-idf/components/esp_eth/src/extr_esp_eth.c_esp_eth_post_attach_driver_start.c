
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int esp_netif_t ;
struct TYPE_8__ {int * driver_free_rx_buffer; int transmit; TYPE_3__* handle; } ;
typedef TYPE_2__ esp_netif_driver_ifconfig_t ;
struct TYPE_7__ {int * netif; } ;
struct TYPE_9__ {TYPE_1__ base; } ;
typedef TYPE_3__ esp_eth_driver_t ;
typedef int esp_err_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGI (int ,char*,...) ;
 int ETH_CMD_G_MAC_ADDR ;
 int TAG ;
 int esp_eth_driver_start (TYPE_3__*) ;
 int esp_eth_ioctl (TYPE_3__*,int ,int *) ;
 int esp_eth_transmit ;
 int esp_netif_set_driver_config (int *,TYPE_2__*) ;
 int esp_netif_set_mac (int *,int *) ;

__attribute__((used)) static esp_err_t esp_eth_post_attach_driver_start(esp_netif_t * esp_netif, void * args)
{
    uint8_t eth_mac[6];
    esp_eth_driver_t *eth_driver = args;
    eth_driver->base.netif = esp_netif;


    esp_netif_driver_ifconfig_t driver_ifconfig = {
            .handle = eth_driver,
            .transmit = esp_eth_transmit,
            .driver_free_rx_buffer = ((void*)0)
    };

    ESP_ERROR_CHECK(esp_netif_set_driver_config(esp_netif, &driver_ifconfig));
    esp_eth_ioctl(eth_driver, ETH_CMD_G_MAC_ADDR, eth_mac);
    ESP_LOGI(TAG, "%x %x %x %x %x %x", eth_mac[0], eth_mac[1], eth_mac[2], eth_mac[3], eth_mac[4], eth_mac[5]);

    esp_netif_set_mac(esp_netif, eth_mac);
    ESP_LOGI(TAG, "ETH netif started");
    return esp_eth_driver_start(eth_driver);
}
