
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bt_mesh_model {TYPE_1__* pub; } ;
struct bt_mesh_elem {int dummy; } ;
struct TYPE_2__ {unsigned int count; int timer; scalar_t__ update; } ;


 int k_delayed_work_cancel (int *) ;

__attribute__((used)) static void model_suspend(struct bt_mesh_model *mod, struct bt_mesh_elem *elem,
                          bool vnd, bool primary, void *user_data)
{
    if (mod->pub && mod->pub->update) {
        mod->pub->count = 0U;
        k_delayed_work_cancel(&mod->pub->timer);
    }
}
