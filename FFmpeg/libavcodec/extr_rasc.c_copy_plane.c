
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_9__ {int height; TYPE_1__* priv_data; } ;
struct TYPE_8__ {int * linesize; int ** data; } ;
struct TYPE_7__ {int stride; } ;
typedef TYPE_1__ RASCContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int memcpy (int *,int *,int ) ;

__attribute__((used)) static void copy_plane(AVCodecContext *avctx, AVFrame *src, AVFrame *dst)
{
    RASCContext *s = avctx->priv_data;
    uint8_t *srcp = src->data[0];
    uint8_t *dstp = dst->data[0];

    for (int y = 0; y < avctx->height; y++) {
        memcpy(dstp, srcp, s->stride);
        srcp += src->linesize[0];
        dstp += dst->linesize[0];
    }
}
