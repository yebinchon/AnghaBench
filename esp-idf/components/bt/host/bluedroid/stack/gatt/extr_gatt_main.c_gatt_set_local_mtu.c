
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int local_mtu; } ;


 TYPE_1__ gatt_default ;

void gatt_set_local_mtu(uint16_t mtu)
{
    gatt_default.local_mtu = mtu;
}
