
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
struct TYPE_2__ {int relay; } ;


 int BLE_MESH_RELAY_NOT_SUPPORTED ;
 TYPE_1__* conf ;

u8_t bt_mesh_relay_get(void)
{
    if (conf) {
        return conf->relay;
    }

    return BLE_MESH_RELAY_NOT_SUPPORTED;
}
