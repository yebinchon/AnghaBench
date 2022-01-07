
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8_t ;
struct TYPE_2__ {int gatt_proxy; } ;


 int BLE_MESH_GATT_PROXY_NOT_SUPPORTED ;
 TYPE_1__* conf ;

u8_t bt_mesh_gatt_proxy_get(void)
{
    if (conf) {
        return conf->gatt_proxy;
    }

    return BLE_MESH_GATT_PROXY_NOT_SUPPORTED;
}
