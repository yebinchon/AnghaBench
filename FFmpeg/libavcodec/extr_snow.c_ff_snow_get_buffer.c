
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int width; int height; int codec; } ;
struct TYPE_8__ {int width; int height; int* linesize; scalar_t__* data; } ;
struct TYPE_7__ {int chroma_v_shift; int chroma_h_shift; TYPE_5__* avctx; } ;
typedef TYPE_1__ SnowContext ;
typedef TYPE_2__ AVFrame ;


 int AV_GET_BUFFER_FLAG_REF ;
 int EDGE_WIDTH ;
 int av_codec_is_encoder (int ) ;
 int ff_get_buffer (TYPE_5__*,TYPE_2__*,int ) ;

int ff_snow_get_buffer(SnowContext *s, AVFrame *frame)
{
    int ret, i;
    int edges_needed = av_codec_is_encoder(s->avctx->codec);

    frame->width = s->avctx->width ;
    frame->height = s->avctx->height;
    if (edges_needed) {
        frame->width += 2 * EDGE_WIDTH;
        frame->height += 2 * EDGE_WIDTH;
    }
    if ((ret = ff_get_buffer(s->avctx, frame, AV_GET_BUFFER_FLAG_REF)) < 0)
        return ret;
    if (edges_needed) {
        for (i = 0; frame->data[i]; i++) {
            int offset = (EDGE_WIDTH >> (i ? s->chroma_v_shift : 0)) *
                            frame->linesize[i] +
                            (EDGE_WIDTH >> (i ? s->chroma_h_shift : 0));
            frame->data[i] += offset;
        }
        frame->width = s->avctx->width;
        frame->height = s->avctx->height;
    }

    return 0;
}
