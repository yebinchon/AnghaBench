
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; int* x; int no_repeat_mask; scalar_t__ pitch_lag; } ;
typedef TYPE_1__ AMRFixed ;



void ff_clear_fixed_vector(float *out, const AMRFixed *in, int size)
{
    int i;

    for (i=0; i < in->n; i++) {
        int x = in->x[i], repeats = !((in->no_repeat_mask >> i) & 1);

        if (in->pitch_lag > 0)
            do {
                out[x] = 0.0;
                x += in->pitch_lag;
            } while (x < size && repeats);
    }
}
