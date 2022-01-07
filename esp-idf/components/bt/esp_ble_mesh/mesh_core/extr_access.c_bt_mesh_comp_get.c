
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_mesh_comp {int dummy; } ;


 struct bt_mesh_comp const* dev_comp ;

const struct bt_mesh_comp *bt_mesh_comp_get(void)
{
    return dev_comp;
}
