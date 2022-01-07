
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bt_mesh_model {size_t elem_idx; } ;
struct bt_mesh_elem {int dummy; } ;
struct TYPE_2__ {struct bt_mesh_elem* elem; } ;


 TYPE_1__* dev_comp ;

struct bt_mesh_elem *bt_mesh_model_elem(struct bt_mesh_model *mod)
{
    return &dev_comp->elem[mod->elem_idx];
}
