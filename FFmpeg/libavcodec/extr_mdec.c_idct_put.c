
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int* linesize; int ** data; } ;
struct TYPE_8__ {int (* idct_put ) (int *,int,int ) ;} ;
struct TYPE_9__ {TYPE_2__ idsp; TYPE_1__* avctx; int block; } ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_3__ MDECContext ;
typedef TYPE_4__ AVFrame ;


 int AV_CODEC_FLAG_GRAY ;
 int * block ;
 int * int16_t (int ) ;
 int stub1 (int *,int,int ) ;
 int stub2 (int *,int,int ) ;
 int stub3 (int *,int,int ) ;
 int stub4 (int *,int,int ) ;
 int stub5 (int *,int,int ) ;
 int stub6 (int *,int,int ) ;

__attribute__((used)) static inline void idct_put(MDECContext *a, AVFrame *frame, int mb_x, int mb_y)
{
    int16_t (*block)[64] = a->block;
    int linesize = frame->linesize[0];

    uint8_t *dest_y = frame->data[0] + (mb_y * 16* linesize ) + mb_x * 16;
    uint8_t *dest_cb = frame->data[1] + (mb_y * 8 * frame->linesize[1]) + mb_x * 8;
    uint8_t *dest_cr = frame->data[2] + (mb_y * 8 * frame->linesize[2]) + mb_x * 8;

    a->idsp.idct_put(dest_y, linesize, block[0]);
    a->idsp.idct_put(dest_y + 8, linesize, block[1]);
    a->idsp.idct_put(dest_y + 8 * linesize, linesize, block[2]);
    a->idsp.idct_put(dest_y + 8 * linesize + 8, linesize, block[3]);

    if (!(a->avctx->flags & AV_CODEC_FLAG_GRAY)) {
        a->idsp.idct_put(dest_cb, frame->linesize[1], block[4]);
        a->idsp.idct_put(dest_cr, frame->linesize[2], block[5]);
    }
}
