
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int* block_index; int b8_stride; int* coded_block; } ;
typedef TYPE_1__ MpegEncContext ;



int ff_msmpeg4_coded_block_pred(MpegEncContext * s, int n, uint8_t **coded_block_ptr)
{
    int xy, wrap, pred, a, b, c;

    xy = s->block_index[n];
    wrap = s->b8_stride;




    a = s->coded_block[xy - 1 ];
    b = s->coded_block[xy - 1 - wrap];
    c = s->coded_block[xy - wrap];

    if (b == c) {
        pred = a;
    } else {
        pred = c;
    }


    *coded_block_ptr = &s->coded_block[xy];

    return pred;
}
