
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bt_mesh_model {TYPE_1__* pub; } ;
struct bt_mesh_elem {int dummy; } ;
typedef scalar_t__ s32_t ;
struct TYPE_2__ {int timer; scalar_t__ update; } ;


 scalar_t__ bt_mesh_model_pub_period_get (struct bt_mesh_model*) ;
 int k_delayed_work_submit (int *,scalar_t__) ;

__attribute__((used)) static void model_resume(struct bt_mesh_model *mod, struct bt_mesh_elem *elem,
                         bool vnd, bool primary, void *user_data)
{
    if (mod->pub && mod->pub->update) {
        s32_t period_ms = bt_mesh_model_pub_period_get(mod);

        if (period_ms) {
            k_delayed_work_submit(&mod->pub->timer, period_ms);
        }
    }
}
