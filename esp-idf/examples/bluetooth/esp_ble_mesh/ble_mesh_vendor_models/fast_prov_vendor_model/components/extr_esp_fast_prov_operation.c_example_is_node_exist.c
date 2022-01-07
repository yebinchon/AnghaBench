
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int uuid; int unicast_addr; } ;
typedef TYPE_1__ example_node_info_t ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ ESP_BLE_MESH_ADDR_IS_UNICAST (int ) ;
 int memcmp (int ,int const*,int) ;
 TYPE_1__* nodes_info ;

bool example_is_node_exist(const uint8_t uuid[16])
{
    example_node_info_t *node = ((void*)0);

    if (!uuid) {
        return 0;
    }

    for (int i = 0; i < ARRAY_SIZE(nodes_info); i++) {
        node = &nodes_info[i];
        if (ESP_BLE_MESH_ADDR_IS_UNICAST(node->unicast_addr)) {
            if (!memcmp(node->uuid, uuid, 16)) {
                return 1;
            }
        }
    }

    return 0;
}
