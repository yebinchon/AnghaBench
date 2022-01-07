
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ btc_enabled_services; } ;


 TYPE_1__ btc_dm_cb ;

void btc_clear_services_mask(void)
{
    btc_dm_cb.btc_enabled_services = 0;
}
