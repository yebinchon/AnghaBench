
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8_t ;
typedef scalar_t__ u16_t ;
struct TYPE_2__ {scalar_t__ company; scalar_t__ id; } ;
struct bt_mesh_model {TYPE_1__ vnd; } ;
struct bt_mesh_elem {size_t vnd_model_count; struct bt_mesh_model* vnd_models; } ;



struct bt_mesh_model *bt_mesh_model_find_vnd(struct bt_mesh_elem *elem,
        u16_t company, u16_t id)
{
    u8_t i;

    for (i = 0U; i < elem->vnd_model_count; i++) {
        if (elem->vnd_models[i].vnd.company == company &&
                elem->vnd_models[i].vnd.id == id) {
            return &elem->vnd_models[i];
        }
    }

    return ((void*)0);
}
