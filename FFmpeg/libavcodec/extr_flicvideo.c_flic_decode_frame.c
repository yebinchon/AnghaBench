
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {scalar_t__ pix_fmt; } ;
struct TYPE_9__ {int size; int * data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_BUG ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_BGR24 ;
 scalar_t__ AV_PIX_FMT_PAL8 ;
 scalar_t__ AV_PIX_FMT_RGB555 ;
 scalar_t__ AV_PIX_FMT_RGB565 ;
 int av_log (TYPE_2__*,int ,char*) ;
 int flic_decode_frame_15_16BPP (TYPE_2__*,void*,int*,int const*,int) ;
 int flic_decode_frame_24BPP (TYPE_2__*,void*,int*,int const*,int) ;
 int flic_decode_frame_8BPP (TYPE_2__*,void*,int*,int const*,int) ;

__attribute__((used)) static int flic_decode_frame(AVCodecContext *avctx,
                             void *data, int *got_frame,
                             AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    if (avctx->pix_fmt == AV_PIX_FMT_PAL8) {
        return flic_decode_frame_8BPP(avctx, data, got_frame,
                                      buf, buf_size);
    } else if ((avctx->pix_fmt == AV_PIX_FMT_RGB555) ||
               (avctx->pix_fmt == AV_PIX_FMT_RGB565)) {
        return flic_decode_frame_15_16BPP(avctx, data, got_frame,
                                          buf, buf_size);
    } else if (avctx->pix_fmt == AV_PIX_FMT_BGR24) {
        return flic_decode_frame_24BPP(avctx, data, got_frame,
                                       buf, buf_size);
    }





    av_log(avctx, AV_LOG_ERROR, "Unknown FLC format, my science cannot explain how this happened.\n");
    return AVERROR_BUG;
}
