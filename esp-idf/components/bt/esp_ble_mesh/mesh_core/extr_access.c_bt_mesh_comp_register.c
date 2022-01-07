
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt_mesh_comp {int elem_count; } ;


 int EINVAL ;
 int bt_mesh_model_foreach (int ,int *) ;
 struct bt_mesh_comp const* dev_comp ;
 int mod_init ;

int bt_mesh_comp_register(const struct bt_mesh_comp *comp)
{

    if (!comp->elem_count) {
        return -EINVAL;
    }

    dev_comp = comp;

    bt_mesh_model_foreach(mod_init, ((void*)0));

    return 0;
}
