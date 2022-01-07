
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* wifi_netif_driver_t ;
typedef int esp_err_t ;
struct TYPE_2__ {int wifi_if; } ;


 int esp_wifi_internal_tx (int ,void*,size_t) ;

__attribute__((used)) static esp_err_t wifi_transmit(void *h, void *buffer, size_t len)
{
    wifi_netif_driver_t driver = h;
    return esp_wifi_internal_tx(driver->wifi_if, buffer, len);
}
