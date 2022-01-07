
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {int * linesize; int ** data; } ;
struct TYPE_6__ {int height; int width; int * processed; } ;
typedef TYPE_1__ Hnm4VideoContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int memcpy (int *,int *,int ) ;

__attribute__((used)) static void copy_processed_frame(AVCodecContext *avctx, AVFrame *frame)
{
    Hnm4VideoContext *hnm = avctx->priv_data;
    uint8_t *src = hnm->processed;
    uint8_t *dst = frame->data[0];
    int y;

    for (y = 0; y < hnm->height; y++) {
        memcpy(dst, src, hnm->width);
        src += hnm->width;
        dst += frame->linesize[0];
    }
}
