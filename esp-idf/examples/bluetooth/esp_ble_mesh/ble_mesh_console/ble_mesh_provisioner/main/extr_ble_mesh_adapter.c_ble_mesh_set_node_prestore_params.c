
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_2__ {int net_idx; int unicast_addr; } ;


 size_t NODE_MAX_GROUP_CONFIG ;
 TYPE_1__* ble_mesh_node_prestore_params ;
 int ble_mesh_node_sema ;
 int portMAX_DELAY ;
 int xSemaphoreGive (int ) ;
 int xSemaphoreTake (int ,int ) ;

void ble_mesh_set_node_prestore_params(uint16_t netkey_index, uint16_t unicast_addr)
{
    uint16_t i;
    xSemaphoreTake(ble_mesh_node_sema, portMAX_DELAY);
    for (i = 0; i < NODE_MAX_GROUP_CONFIG; i++) {
        if (ble_mesh_node_prestore_params[i].net_idx != 0xFFFF && ble_mesh_node_prestore_params[i].unicast_addr != 0xFFFF) {
            ble_mesh_node_prestore_params[i].net_idx = netkey_index;
            ble_mesh_node_prestore_params[i].unicast_addr = unicast_addr;
        }
    }
    xSemaphoreGive(ble_mesh_node_sema);
}
