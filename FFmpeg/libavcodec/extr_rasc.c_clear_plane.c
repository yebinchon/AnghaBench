
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int height; int width; TYPE_1__* priv_data; } ;
struct TYPE_7__ {int * linesize; int ** data; } ;
struct TYPE_6__ {int bpp; } ;
typedef TYPE_1__ RASCContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void clear_plane(AVCodecContext *avctx, AVFrame *frame)
{
    RASCContext *s = avctx->priv_data;
    uint8_t *dst = frame->data[0];

    for (int y = 0; y < avctx->height; y++) {
        memset(dst, 0, avctx->width * s->bpp);
        dst += frame->linesize[0];
    }
}
