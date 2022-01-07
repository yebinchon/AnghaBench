
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_14__ {int width; int height; TYPE_1__* priv_data; } ;
struct TYPE_13__ {int key_frame; int* data; int* linesize; } ;
struct TYPE_12__ {int size; int * data; } ;
struct TYPE_11__ {int mode; } ;
typedef TYPE_1__ LOCOContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int ADVANCE_BY_DECODED ;
 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_assert0 (int ) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__* const,int ) ;
 int loco_decode_plane (TYPE_1__* const,int,int,int,int,int const*,int) ;
 int rotate_faulty_loco (int,int,int,int) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx,
                        void *data, int *got_frame,
                        AVPacket *avpkt)
{
    LOCOContext * const l = avctx->priv_data;
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    AVFrame * const p = data;
    int decoded, ret;

    if ((ret = ff_get_buffer(avctx, p, 0)) < 0)
        return ret;
    p->key_frame = 1;





    switch(l->mode) {
    case 134: case 129: case 130:
        decoded = loco_decode_plane(l, p->data[0], avctx->width, avctx->height,
                                    p->linesize[0], buf, buf_size);
        do { if (decoded < 0 || decoded >= buf_size) goto buf_too_small; buf += decoded; buf_size -= decoded; } while(0);
        decoded = loco_decode_plane(l, p->data[1], avctx->width / 2, avctx->height,
                                    p->linesize[1], buf, buf_size);
        do { if (decoded < 0 || decoded >= buf_size) goto buf_too_small; buf += decoded; buf_size -= decoded; } while(0);
        decoded = loco_decode_plane(l, p->data[2], avctx->width / 2, avctx->height,
                                    p->linesize[2], buf, buf_size);
        break;
    case 133: case 128:
        decoded = loco_decode_plane(l, p->data[0], avctx->width, avctx->height,
                                    p->linesize[0], buf, buf_size);
        do { if (decoded < 0 || decoded >= buf_size) goto buf_too_small; buf += decoded; buf_size -= decoded; } while(0);
        decoded = loco_decode_plane(l, p->data[2], avctx->width / 2, avctx->height / 2,
                                    p->linesize[2], buf, buf_size);
        do { if (decoded < 0 || decoded >= buf_size) goto buf_too_small; buf += decoded; buf_size -= decoded; } while(0);
        decoded = loco_decode_plane(l, p->data[1], avctx->width / 2, avctx->height / 2,
                                    p->linesize[1], buf, buf_size);
        break;
    case 136: case 132:
        decoded = loco_decode_plane(l, p->data[1] + p->linesize[1]*(avctx->height-1), avctx->width, avctx->height,
                                    -p->linesize[1], buf, buf_size);
        do { if (decoded < 0 || decoded >= buf_size) goto buf_too_small; buf += decoded; buf_size -= decoded; } while(0);
        decoded = loco_decode_plane(l, p->data[0] + p->linesize[0]*(avctx->height-1), avctx->width, avctx->height,
                                    -p->linesize[0], buf, buf_size);
        do { if (decoded < 0 || decoded >= buf_size) goto buf_too_small; buf += decoded; buf_size -= decoded; } while(0);
        decoded = loco_decode_plane(l, p->data[2] + p->linesize[2]*(avctx->height-1), avctx->width, avctx->height,
                                    -p->linesize[2], buf, buf_size);
        if (avctx->width & 1) {
            rotate_faulty_loco(p->data[0] + p->linesize[0]*(avctx->height-1), avctx->width, avctx->height, -p->linesize[0]);
            rotate_faulty_loco(p->data[1] + p->linesize[1]*(avctx->height-1), avctx->width, avctx->height, -p->linesize[1]);
            rotate_faulty_loco(p->data[2] + p->linesize[2]*(avctx->height-1), avctx->width, avctx->height, -p->linesize[2]);
        }
        break;
    case 135:
    case 131:
        decoded = loco_decode_plane(l, p->data[1] + p->linesize[1]*(avctx->height-1), avctx->width, avctx->height,
                                    -p->linesize[1], buf, buf_size);
        do { if (decoded < 0 || decoded >= buf_size) goto buf_too_small; buf += decoded; buf_size -= decoded; } while(0);
        decoded = loco_decode_plane(l, p->data[0] + p->linesize[0]*(avctx->height-1), avctx->width, avctx->height,
                                    -p->linesize[0], buf, buf_size);
        do { if (decoded < 0 || decoded >= buf_size) goto buf_too_small; buf += decoded; buf_size -= decoded; } while(0);
        decoded = loco_decode_plane(l, p->data[2] + p->linesize[2]*(avctx->height-1), avctx->width, avctx->height,
                                    -p->linesize[2], buf, buf_size);
        do { if (decoded < 0 || decoded >= buf_size) goto buf_too_small; buf += decoded; buf_size -= decoded; } while(0);
        decoded = loco_decode_plane(l, p->data[3] + p->linesize[3]*(avctx->height-1), avctx->width, avctx->height,
                                    -p->linesize[3], buf, buf_size);
        break;
    default:
        av_assert0(0);
    }

    if (decoded < 0 || decoded > buf_size)
        goto buf_too_small;
    buf_size -= decoded;

    *got_frame = 1;

    return avpkt->size - buf_size;
buf_too_small:
    av_log(avctx, AV_LOG_ERROR, "Input data too small.\n");
    return AVERROR(EINVAL);
}
