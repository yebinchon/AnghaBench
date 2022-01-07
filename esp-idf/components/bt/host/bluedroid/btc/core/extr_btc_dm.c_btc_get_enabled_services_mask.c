
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tBTA_SERVICE_MASK ;
struct TYPE_2__ {int btc_enabled_services; } ;


 TYPE_1__ btc_dm_cb ;

tBTA_SERVICE_MASK btc_get_enabled_services_mask(void)
{
    return btc_dm_cb.btc_enabled_services;
}
