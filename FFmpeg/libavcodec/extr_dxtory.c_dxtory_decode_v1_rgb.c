
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int64_t ;
struct TYPE_9__ {int width; int height; int pix_fmt; } ;
struct TYPE_8__ {int * linesize; int ** data; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_2__*,int ,char*) ;
 int ff_get_buffer (TYPE_2__*,TYPE_1__*,int ) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static int dxtory_decode_v1_rgb(AVCodecContext *avctx, AVFrame *pic,
                                const uint8_t *src, int src_size,
                                int id, int bpp)
{
    int h;
    uint8_t *dst;
    int ret;

    if (src_size < avctx->width * avctx->height * (int64_t)bpp) {
        av_log(avctx, AV_LOG_ERROR, "packet too small\n");
        return AVERROR_INVALIDDATA;
    }

    avctx->pix_fmt = id;
    if ((ret = ff_get_buffer(avctx, pic, 0)) < 0)
        return ret;

    dst = pic->data[0];
    for (h = 0; h < avctx->height; h++) {
        memcpy(dst, src, avctx->width * bpp);
        src += avctx->width * bpp;
        dst += pic->linesize[0];
    }

    return 0;
}
