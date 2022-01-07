
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* get_link ) (TYPE_1__*) ;} ;
typedef TYPE_1__ esp_eth_phy_t ;
struct TYPE_5__ {TYPE_1__* phy; } ;
typedef TYPE_2__ esp_eth_driver_t ;
typedef int TimerHandle_t ;


 scalar_t__ pvTimerGetTimerID (int ) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void eth_check_link_timer_cb(TimerHandle_t xTimer)
{
    esp_eth_driver_t *eth_driver = (esp_eth_driver_t *)pvTimerGetTimerID(xTimer);
    esp_eth_phy_t *phy = eth_driver->phy;
    phy->get_link(phy);
}
