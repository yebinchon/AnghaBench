
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* wifi_netif_driver_t ;
typedef int wifi_interface_t ;
struct wifi_netif_driver {int dummy; } ;
struct TYPE_5__ {int post_attach; } ;
struct TYPE_6__ {TYPE_1__ base; int wifi_if; } ;


 int ESP_LOGE (int ,char*) ;
 int TAG ;
 TYPE_2__* calloc (int,int) ;
 int wifi_driver_start ;

wifi_netif_driver_t esp_wifi_create_if_driver(wifi_interface_t wifi_if)
{
    wifi_netif_driver_t driver = calloc(1, sizeof(struct wifi_netif_driver));
    if (driver == ((void*)0)) {
        ESP_LOGE(TAG, "No memory to create a wifi interface handle");
        return ((void*)0);
    }
    driver->wifi_if = wifi_if;
    driver->base.post_attach = wifi_driver_start;
    return driver;
}
