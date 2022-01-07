
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* wifi_netif_driver_t ;
struct TYPE_3__ {scalar_t__ wifi_if; } ;


 scalar_t__ WIFI_IF_AP ;

bool esp_wifi_is_if_ready_when_started(wifi_netif_driver_t ifx)
{

    return (ifx->wifi_if == WIFI_IF_AP);
}
