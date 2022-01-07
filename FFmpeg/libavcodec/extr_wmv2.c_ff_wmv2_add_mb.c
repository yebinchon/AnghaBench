
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
typedef int Wmv2Context ;
struct TYPE_5__ {int linesize; int uvlinesize; TYPE_1__* avctx; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_2__ MpegEncContext ;


 int AV_CODEC_FLAG_GRAY ;
 int wmv2_add_block (int * const,int *,int *,int,int) ;

void ff_wmv2_add_mb(MpegEncContext *s, int16_t block1[6][64],
                    uint8_t *dest_y, uint8_t *dest_cb, uint8_t *dest_cr)
{
    Wmv2Context *const w = (Wmv2Context *) s;

    wmv2_add_block(w, block1[0], dest_y, s->linesize, 0);
    wmv2_add_block(w, block1[1], dest_y + 8, s->linesize, 1);
    wmv2_add_block(w, block1[2], dest_y + 8 * s->linesize, s->linesize, 2);
    wmv2_add_block(w, block1[3], dest_y + 8 + 8 * s->linesize, s->linesize, 3);

    if (s->avctx->flags & AV_CODEC_FLAG_GRAY)
        return;

    wmv2_add_block(w, block1[4], dest_cb, s->uvlinesize, 4);
    wmv2_add_block(w, block1[5], dest_cr, s->uvlinesize, 5);
}
