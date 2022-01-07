
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gain_size_factor; float* gain_table; } ;
typedef TYPE_1__ COOKContext ;


 float* pow2tab ;

__attribute__((used)) static void interpolate_float(COOKContext *q, float *buffer,
                              int gain_index, int gain_index_next)
{
    int i;
    float fc1, fc2;
    fc1 = pow2tab[gain_index + 63];

    if (gain_index == gain_index_next) {
        for (i = 0; i < q->gain_size_factor; i++)
            buffer[i] *= fc1;
    } else {
        fc2 = q->gain_table[15 + (gain_index_next - gain_index)];
        for (i = 0; i < q->gain_size_factor; i++) {
            buffer[i] *= fc1;
            fc1 *= fc2;
        }
    }
}
