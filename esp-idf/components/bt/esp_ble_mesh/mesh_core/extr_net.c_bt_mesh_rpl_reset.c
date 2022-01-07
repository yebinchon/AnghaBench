
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bt_mesh_rpl {int old_iv; scalar_t__ src; } ;
struct TYPE_2__ {struct bt_mesh_rpl* rpl; } ;


 int ARRAY_SIZE (struct bt_mesh_rpl*) ;
 TYPE_1__ bt_mesh ;
 int memset (struct bt_mesh_rpl*,int ,int) ;

void bt_mesh_rpl_reset(void)
{
    int i;




    for (i = 0; i < ARRAY_SIZE(bt_mesh.rpl); i++) {
        struct bt_mesh_rpl *rpl = &bt_mesh.rpl[i];

        if (rpl->src) {
            if (rpl->old_iv) {
                (void)memset(rpl, 0, sizeof(*rpl));
            } else {
                rpl->old_iv = 1;
            }
        }
    }
}
