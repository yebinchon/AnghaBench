
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int gatt_get_local_mtu () ;

uint16_t BTA_GATT_GetLocalMTU(void)
{
    return gatt_get_local_mtu();
}
