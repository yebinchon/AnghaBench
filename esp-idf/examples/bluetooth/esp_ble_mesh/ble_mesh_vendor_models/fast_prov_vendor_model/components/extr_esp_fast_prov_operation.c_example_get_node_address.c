
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int unicast_addr; } ;


 TYPE_1__* nodes_info ;

uint16_t example_get_node_address(int node_idx)
{
    return nodes_info[node_idx].unicast_addr;
}
