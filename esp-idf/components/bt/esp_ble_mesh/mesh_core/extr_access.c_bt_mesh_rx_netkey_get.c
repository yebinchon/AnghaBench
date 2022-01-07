
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bt_mesh_subnet {int dummy; } ;
struct TYPE_2__ {struct bt_mesh_subnet* sub; struct bt_mesh_subnet** p_sub; } ;


 size_t ARRAY_SIZE (struct bt_mesh_subnet*) ;
 TYPE_1__ bt_mesh ;
 scalar_t__ bt_mesh_is_provisioned () ;
 scalar_t__ bt_mesh_is_provisioner_en () ;

struct bt_mesh_subnet *bt_mesh_rx_netkey_get(size_t index)
{
    struct bt_mesh_subnet *sub = ((void*)0);
    return sub;
}
