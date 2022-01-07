
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ unicast_addr; scalar_t__ element_num; } ;
typedef TYPE_1__ example_node_info_t ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ESP_BLE_MESH_ADDR_IS_UNICAST (scalar_t__) ;
 TYPE_1__* nodes_info ;

example_node_info_t *example_get_node_info(uint16_t node_addr)
{
    example_node_info_t *node = ((void*)0);

    if (!ESP_BLE_MESH_ADDR_IS_UNICAST(node_addr)) {
        return ((void*)0);
    }

    for (int i = 0; i < ARRAY_SIZE(nodes_info); i++) {
        node = &nodes_info[i];
        if (node_addr >= node->unicast_addr &&
                node_addr < node->unicast_addr + node->element_num) {
            return node;
        }
    }

    return ((void*)0);
}
