
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int height; int width; scalar_t__ codec_id; } ;
struct TYPE_10__ {int key_frame; int * linesize; int ** data; int pict_type; } ;
struct TYPE_9__ {int size; int * data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_CODEC_ID_AYUV ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_TYPE_I ;
 int EINVAL ;
 int av_log (TYPE_3__*,int ,char*) ;
 int ff_get_buffer (TYPE_3__*,TYPE_2__*,int ) ;

__attribute__((used)) static int v408_decode_frame(AVCodecContext *avctx, void *data,
                             int *got_frame, AVPacket *avpkt)
{
    AVFrame *pic = data;
    const uint8_t *src = avpkt->data;
    uint8_t *y, *u, *v, *a;
    int i, j, ret;

    if (avpkt->size < 4 * avctx->height * avctx->width) {
        av_log(avctx, AV_LOG_ERROR, "Insufficient input data.\n");
        return AVERROR(EINVAL);
    }

    if ((ret = ff_get_buffer(avctx, pic, 0)) < 0)
        return ret;

    pic->key_frame = 1;
    pic->pict_type = AV_PICTURE_TYPE_I;

    y = pic->data[0];
    u = pic->data[1];
    v = pic->data[2];
    a = pic->data[3];

    for (i = 0; i < avctx->height; i++) {
        for (j = 0; j < avctx->width; j++) {
            if (avctx->codec_id==AV_CODEC_ID_AYUV) {
                v[j] = *src++;
                u[j] = *src++;
                y[j] = *src++;
                a[j] = *src++;
            } else {
                u[j] = *src++;
                y[j] = *src++;
                v[j] = *src++;
                a[j] = *src++;
            }
        }

        y += pic->linesize[0];
        u += pic->linesize[1];
        v += pic->linesize[2];
        a += pic->linesize[3];
    }

    *got_frame = 1;

    return avpkt->size;
}
