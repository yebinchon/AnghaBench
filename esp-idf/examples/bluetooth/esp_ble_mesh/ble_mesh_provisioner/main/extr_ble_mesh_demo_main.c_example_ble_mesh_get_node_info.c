
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ unicast; scalar_t__ elem_num; } ;
typedef TYPE_1__ esp_ble_mesh_node_info_t ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ESP_BLE_MESH_ADDR_IS_UNICAST (scalar_t__) ;
 TYPE_1__* nodes ;

__attribute__((used)) static esp_ble_mesh_node_info_t *example_ble_mesh_get_node_info(uint16_t unicast)
{
    int i;

    if (!ESP_BLE_MESH_ADDR_IS_UNICAST(unicast)) {
        return ((void*)0);
    }

    for (i = 0; i < ARRAY_SIZE(nodes); i++) {
        if (nodes[i].unicast <= unicast &&
                nodes[i].unicast + nodes[i].elem_num > unicast) {
            return &nodes[i];
        }
    }

    return ((void*)0);
}
