
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int bt_mesh_primary_addr () ;

uint16_t btc_ble_mesh_get_primary_addr(void)
{
    return bt_mesh_primary_addr();
}
