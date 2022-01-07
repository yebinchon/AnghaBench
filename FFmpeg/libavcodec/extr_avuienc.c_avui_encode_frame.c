
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {scalar_t__ field_order; int height; int width; } ;
struct TYPE_10__ {int* linesize; int ** data; } ;
struct TYPE_9__ {int flags; int * data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 scalar_t__ AV_FIELD_PROGRESSIVE ;
 int AV_PKT_FLAG_KEY ;
 int ff_alloc_packet2 (TYPE_3__*,TYPE_1__*,int,int) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int avui_encode_frame(AVCodecContext *avctx, AVPacket *pkt,
                             const AVFrame *pic, int *got_packet)
{
    uint8_t *dst;
    int i, j, skip, ret, size, interlaced;

    interlaced = avctx->field_order > AV_FIELD_PROGRESSIVE;

    if (avctx->height == 486) {
        skip = 10;
    } else {
        skip = 16;
    }
    size = 2 * avctx->width * (avctx->height + skip) + 8 * interlaced;
    if ((ret = ff_alloc_packet2(avctx, pkt, size, size)) < 0)
        return ret;
    dst = pkt->data;
    if (!interlaced) {
        memset(dst, 0, avctx->width * skip);
        dst += avctx->width * skip;
    }

    for (i = 0; i <= interlaced; i++) {
        uint8_t *src;
        if (interlaced && avctx->height == 486) {
            src = pic->data[0] + (1 - i) * pic->linesize[0];
        } else {
            src = pic->data[0] + i * pic->linesize[0];
        }
        memset(dst, 0, avctx->width * skip + 4 * i);
        dst += avctx->width * skip + 4 * i;
        for (j = 0; j < avctx->height; j += interlaced + 1) {
            memcpy(dst, src, avctx->width * 2);
            src += (interlaced + 1) * pic->linesize[0];
            dst += avctx->width * 2;
        }
    }

    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;
    return 0;
}
