
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nack_count; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* seg_tx ;

bool bt_mesh_tx_in_progress(void)
{
    int i;

    for (i = 0; i < ARRAY_SIZE(seg_tx); i++) {
        if (seg_tx[i].nack_count) {
            return 1;
        }
    }

    return 0;
}
