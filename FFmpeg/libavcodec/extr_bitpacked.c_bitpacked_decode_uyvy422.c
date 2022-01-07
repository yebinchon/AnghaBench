
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int height; int width; int pix_fmt; } ;
struct TYPE_8__ {int * buf; int linesize; int data; } ;
struct TYPE_7__ {int data; int buf; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int av_buffer_ref (int ) ;
 int av_buffer_unref (int *) ;
 int av_image_fill_arrays (int ,int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static int bitpacked_decode_uyvy422(AVCodecContext *avctx, AVFrame *frame,
                                    AVPacket *avpkt)
{
    int ret;



    frame->buf[0] = av_buffer_ref(avpkt->buf);
    ret = av_image_fill_arrays(frame->data, frame->linesize, avpkt->data,
                               avctx->pix_fmt, avctx->width, avctx->height, 1);
    if (ret < 0) {
        av_buffer_unref(&frame->buf[0]);
        return ret;
    }

    return 0;
}
