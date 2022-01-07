
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int mb_width; int* slice_quants; TYPE_1__* pic; scalar_t__* quant; int * q; int gb; } ;
struct TYPE_5__ {int* linesize; scalar_t__* data; } ;
typedef TYPE_2__ TSCC2Context ;


 int init_get_bits8 (int *,int const*,int) ;
 int tscc2_decode_mb (TYPE_2__*,int ,scalar_t__,scalar_t__,int,int) ;

__attribute__((used)) static int tscc2_decode_slice(TSCC2Context *c, int mb_y,
                              const uint8_t *buf, int buf_size)
{
    int i, mb_x, q, ret;
    int off;

    if ((ret = init_get_bits8(&c->gb, buf, buf_size)) < 0)
        return ret;

    for (mb_x = 0; mb_x < c->mb_width; mb_x++) {
        q = c->slice_quants[mb_x + c->mb_width * mb_y];

        if (q == 0 || q == 3)
            continue;
        for (i = 0; i < 3; i++) {
            off = mb_x * 16 + mb_y * 8 * c->pic->linesize[i];
            ret = tscc2_decode_mb(c, c->q[q - 1], c->quant[q - 1] - 2,
                                  c->pic->data[i] + off, c->pic->linesize[i], i);
            if (ret)
                return ret;
        }
    }

    return 0;
}
