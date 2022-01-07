
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * outch; int ** coeff; int * shift; int * fbits; scalar_t__ count; } ;
typedef TYPE_1__ MatrixParams ;


 unsigned int MAX_CHANNELS ;
 unsigned int MAX_MATRICES ;

__attribute__((used)) static void copy_matrix_params(MatrixParams *dst, MatrixParams *src)
{
    dst->count = src->count;

    if (dst->count) {
        unsigned int channel, count;

        for (channel = 0; channel < MAX_CHANNELS; channel++) {

            dst->fbits[channel] = src->fbits[channel];
            dst->shift[channel] = src->shift[channel];

            for (count = 0; count < MAX_MATRICES; count++)
                dst->coeff[count][channel] = src->coeff[count][channel];
        }

        for (count = 0; count < MAX_MATRICES; count++)
            dst->outch[count] = src->outch[count];
    }
}
