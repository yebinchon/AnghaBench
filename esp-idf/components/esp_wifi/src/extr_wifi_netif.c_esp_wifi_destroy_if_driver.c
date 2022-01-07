
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wifi_netif_driver_t ;


 int free (int ) ;

void esp_wifi_destroy_if_driver(wifi_netif_driver_t h)
{
    free(h);
}
