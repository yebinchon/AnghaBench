
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8_t ;
typedef scalar_t__ u16_t ;
struct bt_mesh_model {scalar_t__ id; } ;
struct bt_mesh_elem {size_t model_count; struct bt_mesh_model* models; } ;



struct bt_mesh_model *bt_mesh_model_find(struct bt_mesh_elem *elem,
        u16_t id)
{
    u8_t i;

    for (i = 0U; i < elem->model_count; i++) {
        if (elem->models[i].id == id) {
            return &elem->models[i];
        }
    }

    return ((void*)0);
}
