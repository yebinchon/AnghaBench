
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
struct TYPE_2__ {int beacon; } ;


 int BLE_MESH_BEACON_DISABLED ;
 TYPE_1__* conf ;

u8_t bt_mesh_beacon_get(void)
{
    if (conf) {
        return conf->beacon;
    }

    return BLE_MESH_BEACON_DISABLED;
}
