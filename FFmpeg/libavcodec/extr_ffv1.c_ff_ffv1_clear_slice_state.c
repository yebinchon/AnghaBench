
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int plane_count; scalar_t__ ac; scalar_t__* initial_states; TYPE_2__* plane; } ;
struct TYPE_7__ {int* interlace_bit_state; size_t quant_table_index; int context_count; TYPE_1__* vlc_state; int state; } ;
struct TYPE_6__ {int error_sum; int count; scalar_t__ bias; scalar_t__ drift; } ;
typedef TYPE_2__ PlaneContext ;
typedef TYPE_3__ FFV1Context ;


 scalar_t__ AC_GOLOMB_RICE ;
 int CONTEXT_SIZE ;
 int memcpy (int ,scalar_t__,int) ;
 int memset (int ,int,int) ;

void ff_ffv1_clear_slice_state(FFV1Context *f, FFV1Context *fs)
{
    int i, j;

    for (i = 0; i < f->plane_count; i++) {
        PlaneContext *p = &fs->plane[i];

        p->interlace_bit_state[0] = 128;
        p->interlace_bit_state[1] = 128;

        if (fs->ac != AC_GOLOMB_RICE) {
            if (f->initial_states[p->quant_table_index]) {
                memcpy(p->state, f->initial_states[p->quant_table_index],
                       CONTEXT_SIZE * p->context_count);
            } else
                memset(p->state, 128, CONTEXT_SIZE * p->context_count);
        } else {
            for (j = 0; j < p->context_count; j++) {
                p->vlc_state[j].drift = 0;
                p->vlc_state[j].error_sum = 4;
                p->vlc_state[j].bias = 0;
                p->vlc_state[j].count = 1;
            }
        }
    }
}
