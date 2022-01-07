
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {double width; double height; } ;
struct TYPE_10__ {int* linesize; int ** data; } ;
struct TYPE_9__ {int flags; int * data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AV_PKT_FLAG_KEY ;
 int ff_alloc_packet2 (TYPE_3__*,TYPE_1__*,double,int ) ;

__attribute__((used)) static int y41p_encode_frame(AVCodecContext *avctx, AVPacket *pkt,
                             const AVFrame *pic, int *got_packet)
{
    uint8_t *dst;
    uint8_t *y, *u, *v;
    int i, j, ret;

    if ((ret = ff_alloc_packet2(avctx, pkt, avctx->width * avctx->height * 1.5, 0)) < 0)
        return ret;

    dst = pkt->data;

    for (i = avctx->height - 1; i >= 0; i--) {
        y = &pic->data[0][i * pic->linesize[0]];
        u = &pic->data[1][i * pic->linesize[1]];
        v = &pic->data[2][i * pic->linesize[2]];
        for (j = 0; j < avctx->width; j += 8) {
            *(dst++) = *(u++);
            *(dst++) = *(y++);
            *(dst++) = *(v++);
            *(dst++) = *(y++);

            *(dst++) = *(u++);
            *(dst++) = *(y++);
            *(dst++) = *(v++);
            *(dst++) = *(y++);

            *(dst++) = *(y++);
            *(dst++) = *(y++);
            *(dst++) = *(y++);
            *(dst++) = *(y++);
        }
    }

    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;
    return 0;
}
