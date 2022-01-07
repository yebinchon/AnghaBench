
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int local_mtu; } ;


 TYPE_1__ gatt_default ;

uint16_t gatt_get_local_mtu(void)
{
    return gatt_default.local_mtu;
}
