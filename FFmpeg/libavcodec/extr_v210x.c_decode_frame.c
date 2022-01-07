
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_12__ {int width; int height; } ;
struct TYPE_11__ {int key_frame; int* linesize; int pict_type; scalar_t__* data; } ;
struct TYPE_10__ {int size; scalar_t__ data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_TYPE_I ;
 int av_be2ne32 (int ) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int avpriv_request_sample (TYPE_3__*,char*) ;
 int ff_get_buffer (TYPE_3__*,TYPE_2__*,int ) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx, void *data, int *got_frame,
                        AVPacket *avpkt)
{
    const uint32_t *src = (const uint32_t *)avpkt->data;
    AVFrame *pic = data;
    int width = avctx->width;
    int y = 0;
    uint16_t *ydst, *udst, *vdst, *yend;
    int ret;

    if (avpkt->size < avctx->width * avctx->height * 8 / 3) {
        av_log(avctx, AV_LOG_ERROR, "Packet too small\n");
        return AVERROR_INVALIDDATA;
    }

    if (avpkt->size > avctx->width * avctx->height * 8 / 3) {
        avpriv_request_sample(avctx, "(Probably) padded data");
    }

    if ((ret = ff_get_buffer(avctx, pic, 0)) < 0)
        return ret;

    ydst = (uint16_t *)pic->data[0];
    udst = (uint16_t *)pic->data[1];
    vdst = (uint16_t *)pic->data[2];
    yend = ydst + width;
    pic->pict_type = AV_PICTURE_TYPE_I;
    pic->key_frame = 1;

    for (;;) {
        uint32_t v = av_be2ne32(*src++);
        *udst++ = (v >> 16) & 0xFFC0;
        *ydst++ = (v >> 6 ) & 0xFFC0;
        *vdst++ = (v << 4 ) & 0xFFC0;

        v = av_be2ne32(*src++);
        *ydst++ = (v >> 16) & 0xFFC0;

        if (ydst >= yend) {
            ydst += pic->linesize[0] / 2 - width;
            udst += pic->linesize[1] / 2 - width / 2;
            vdst += pic->linesize[2] / 2 - width / 2;
            yend = ydst + width;
            if (++y >= avctx->height)
                break;
        }

        *udst++ = (v >> 6 ) & 0xFFC0;
        *ydst++ = (v << 4 ) & 0xFFC0;

        v = av_be2ne32(*src++);
        *vdst++ = (v >> 16) & 0xFFC0;
        *ydst++ = (v >> 6 ) & 0xFFC0;

        if (ydst >= yend) {
            ydst += pic->linesize[0] / 2 - width;
            udst += pic->linesize[1] / 2 - width / 2;
            vdst += pic->linesize[2] / 2 - width / 2;
            yend = ydst + width;
            if (++y >= avctx->height)
                break;
        }

        *udst++ = (v << 4 ) & 0xFFC0;

        v = av_be2ne32(*src++);
        *ydst++ = (v >> 16) & 0xFFC0;
        *vdst++ = (v >> 6 ) & 0xFFC0;
        *ydst++ = (v << 4 ) & 0xFFC0;
        if (ydst >= yend) {
            ydst += pic->linesize[0] / 2 - width;
            udst += pic->linesize[1] / 2 - width / 2;
            vdst += pic->linesize[2] / 2 - width / 2;
            yend = ydst + width;
            if (++y >= avctx->height)
                break;
        }
    }

    *got_frame = 1;

    return avpkt->size;
}
