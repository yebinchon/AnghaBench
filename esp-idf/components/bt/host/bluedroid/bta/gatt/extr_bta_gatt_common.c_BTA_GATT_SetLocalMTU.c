
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int gatt_set_local_mtu (int ) ;

void BTA_GATT_SetLocalMTU(uint16_t mtu)
{
    gatt_set_local_mtu(mtu);
}
