
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
typedef int int16_t ;
struct TYPE_7__ {TYPE_1__* avctx; } ;
typedef TYPE_2__ TgqContext ;
struct TYPE_8__ {int* linesize; int ** data; } ;
struct TYPE_6__ {int flags; } ;
typedef TYPE_3__ AVFrame ;


 int AV_CODEC_FLAG_GRAY ;
 int ff_ea_idct_put_c (int *,int,int *) ;

__attribute__((used)) static void tgq_idct_put_mb(TgqContext *s, int16_t (*block)[64], AVFrame *frame,
                            int mb_x, int mb_y)
{
    ptrdiff_t linesize = frame->linesize[0];
    uint8_t *dest_y = frame->data[0] + (mb_y * 16 * linesize) + mb_x * 16;
    uint8_t *dest_cb = frame->data[1] + (mb_y * 8 * frame->linesize[1]) + mb_x * 8;
    uint8_t *dest_cr = frame->data[2] + (mb_y * 8 * frame->linesize[2]) + mb_x * 8;

    ff_ea_idct_put_c(dest_y , linesize, block[0]);
    ff_ea_idct_put_c(dest_y + 8, linesize, block[1]);
    ff_ea_idct_put_c(dest_y + 8 * linesize , linesize, block[2]);
    ff_ea_idct_put_c(dest_y + 8 * linesize + 8, linesize, block[3]);
    if (!(s->avctx->flags & AV_CODEC_FLAG_GRAY)) {
         ff_ea_idct_put_c(dest_cb, frame->linesize[1], block[4]);
         ff_ea_idct_put_c(dest_cr, frame->linesize[2], block[5]);
    }
}
