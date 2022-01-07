
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {int (* receive ) (TYPE_1__*,int *,int *) ;} ;
typedef TYPE_1__ esp_eth_mac_t ;
typedef scalar_t__ esp_eth_handle_t ;
struct TYPE_6__ {TYPE_1__* mac; } ;
typedef TYPE_2__ esp_eth_driver_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 int ETH_CHECK (TYPE_2__*,char*,int ,int ) ;
 int err ;
 int stub1 (TYPE_1__*,int *,int *) ;

esp_err_t esp_eth_receive(esp_eth_handle_t hdl, uint8_t *buf, uint32_t *length)
{
    esp_err_t ret = ESP_OK;
    esp_eth_driver_t *eth_driver = (esp_eth_driver_t *)hdl;
    ETH_CHECK(eth_driver, "ethernet driver handle can't be null", err, ESP_ERR_INVALID_ARG);
    esp_eth_mac_t *mac = eth_driver->mac;
    return mac->receive(mac, buf, length);
err:
    return ret;
}
