
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int BTA_GATT_SetLocalMTU (int ) ;

__attribute__((used)) static void btc_set_local_mtu(uint16_t mtu)
{
    BTA_GATT_SetLocalMTU(mtu);
}
