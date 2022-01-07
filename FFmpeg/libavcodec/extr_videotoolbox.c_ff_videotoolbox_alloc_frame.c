
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int VTHWFrame ;
struct TYPE_11__ {int pix_fmt; int height; int width; } ;
struct TYPE_10__ {int format; int height; int width; TYPE_1__* private_ref; int ** buf; } ;
struct TYPE_9__ {int post_process; } ;
struct TYPE_8__ {scalar_t__ data; } ;
typedef TYPE_2__ FrameDecodeData ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;
typedef int AVBufferRef ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int * av_buffer_create (int *,size_t,int ,int *,int ) ;
 int av_freep (int **) ;
 int * av_mallocz (size_t) ;
 int ff_attach_decode_data (TYPE_3__*) ;
 int videotoolbox_buffer_release ;
 int videotoolbox_postproc_frame ;

int ff_videotoolbox_alloc_frame(AVCodecContext *avctx, AVFrame *frame)
{
    size_t size = sizeof(VTHWFrame);
    uint8_t *data = ((void*)0);
    AVBufferRef *buf = ((void*)0);
    int ret = ff_attach_decode_data(frame);
    FrameDecodeData *fdd;
    if (ret < 0)
        return ret;

    data = av_mallocz(size);
    if (!data)
        return AVERROR(ENOMEM);
    buf = av_buffer_create(data, size, videotoolbox_buffer_release, ((void*)0), 0);
    if (!buf) {
        av_freep(&data);
        return AVERROR(ENOMEM);
    }
    frame->buf[0] = buf;

    fdd = (FrameDecodeData*)frame->private_ref->data;
    fdd->post_process = videotoolbox_postproc_frame;

    frame->width = avctx->width;
    frame->height = avctx->height;
    frame->format = avctx->pix_fmt;

    return 0;
}
