
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int eth_driver ;
typedef TYPE_1__* esp_eth_handle_t ;
struct TYPE_6__ {int check_link_timer; } ;
typedef TYPE_1__ esp_eth_driver_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_FAIL ;
 scalar_t__ ESP_OK ;
 int ETHERNET_EVENT_START ;
 int ETH_CHECK (int,char*,int ,int ) ;
 int ETH_EVENT ;
 int err_event ;
 int err_start_timer ;
 int esp_eth_driver_uninstall (TYPE_1__*) ;
 scalar_t__ esp_event_post (int ,int ,TYPE_1__**,int,int ) ;
 scalar_t__ pdPASS ;
 int xTimerDelete (int ,int ) ;
 scalar_t__ xTimerStart (int ,int ) ;

esp_err_t esp_eth_driver_start(esp_eth_handle_t eth_handle)
{
    esp_err_t ret = ESP_OK;
    esp_eth_driver_t *eth_driver = eth_handle;
    ETH_CHECK(xTimerStart(eth_driver->check_link_timer, 0) == pdPASS, "start eth_link_timer failed", err_start_timer, ESP_FAIL);

    ETH_CHECK(esp_event_post(ETH_EVENT, ETHERNET_EVENT_START, &eth_driver, sizeof(eth_driver), 0) == ESP_OK,
              "send ETHERNET_EVENT_START event failed", err_event, ESP_FAIL);
    return ret;
err_start_timer:
    xTimerDelete(eth_driver->check_link_timer, 0);
err_event:
    esp_eth_driver_uninstall(eth_driver);
    return ret;
}
