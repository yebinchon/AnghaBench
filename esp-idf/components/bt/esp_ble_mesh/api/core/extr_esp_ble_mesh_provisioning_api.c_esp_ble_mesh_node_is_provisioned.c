
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bt_mesh_is_provisioned () ;

bool esp_ble_mesh_node_is_provisioned(void)
{
    return bt_mesh_is_provisioned();
}
