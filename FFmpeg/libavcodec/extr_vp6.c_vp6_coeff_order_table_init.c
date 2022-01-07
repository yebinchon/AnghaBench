
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sub_version; TYPE_1__* modelp; } ;
typedef TYPE_2__ VP56Context ;
struct TYPE_4__ {int* coeff_index_to_pos; int* coeff_reorder; int* coeff_index_to_idct_selector; } ;



__attribute__((used)) static void vp6_coeff_order_table_init(VP56Context *s)
{
    int i, pos, idx = 1;

    s->modelp->coeff_index_to_pos[0] = 0;
    for (i=0; i<16; i++)
        for (pos=1; pos<64; pos++)
            if (s->modelp->coeff_reorder[pos] == i)
                s->modelp->coeff_index_to_pos[idx++] = pos;

    for (idx = 0; idx < 64; idx++) {
        int max = 0;
        for (i = 0; i <= idx; i++) {
            int v = s->modelp->coeff_index_to_pos[i];
            if (v > max)
                max = v;
        }
        if (s->sub_version > 6)
            max++;
        s->modelp->coeff_index_to_idct_selector[idx] = max;
    }
}
