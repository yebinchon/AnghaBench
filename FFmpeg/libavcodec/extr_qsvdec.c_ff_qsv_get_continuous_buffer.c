
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ data; } ;
struct TYPE_11__ {int pix_fmt; int height; int width; } ;
struct TYPE_10__ {int* linesize; scalar_t__* data; TYPE_9__** buf; int height; int width; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVCodecContext ;
typedef int AVBufferPool ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;


 int ENOMEM ;
 int FFALIGN (int ,int) ;
 TYPE_9__* av_buffer_pool_get (int *) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int ff_attach_decode_data (TYPE_1__*) ;
 int ff_decode_frame_props (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static int ff_qsv_get_continuous_buffer(AVCodecContext *avctx, AVFrame *frame, AVBufferPool *pool)
{
    int ret = 0;

    ff_decode_frame_props(avctx, frame);

    frame->width = avctx->width;
    frame->height = avctx->height;

    switch (avctx->pix_fmt) {
    case 129:
        frame->linesize[0] = FFALIGN(avctx->width, 128);
        break;
    case 128:
        frame->linesize[0] = 2 * FFALIGN(avctx->width, 128);
        break;
    default:
        av_log(avctx, AV_LOG_ERROR, "Unsupported pixel format.\n");
        return AVERROR(ENOMEM);
    }

    frame->linesize[1] = frame->linesize[0];
    frame->buf[0] = av_buffer_pool_get(pool);
    if (!frame->buf[0])
        return AVERROR(ENOMEM);

    frame->data[0] = frame->buf[0]->data;
    frame->data[1] = frame->data[0] +
                            frame->linesize[0] * FFALIGN(avctx->height, 64);

    ret = ff_attach_decode_data(frame);
    if (ret < 0)
        return ret;

    return 0;
}
