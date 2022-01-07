
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_16__ {int pix_fmt; } ;
struct TYPE_15__ {int width; int height; int pix_fmt; TYPE_1__* priv_data; } ;
struct TYPE_14__ {int width; int height; int* linesize; int key_frame; scalar_t__* data; int pict_type; int format; } ;
struct TYPE_13__ {int size; int * data; } ;
struct TYPE_12__ {int tff; scalar_t__ interlace; TYPE_9__* mjpeg_avctx; scalar_t__ is_mjpeg; } ;
typedef TYPE_1__ AVRnContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_TYPE_I ;
 int av_log (TYPE_4__*,int ,char*) ;
 int av_pix_fmt_get_chroma_sub_sample (int ,int*,int*) ;
 int avcodec_decode_video2 (TYPE_9__*,void*,int*,TYPE_2__*) ;
 int ff_get_buffer (TYPE_4__*,TYPE_3__*,int ) ;
 int memcpy (scalar_t__,int const*,int) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx, void *data,
                        int *got_frame, AVPacket *avpkt)
{
    AVRnContext *a = avctx->priv_data;
    AVFrame *p = data;
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    int y, ret, true_height;

    if(a->is_mjpeg) {
        ret = avcodec_decode_video2(a->mjpeg_avctx, data, got_frame, avpkt);

        if (ret >= 0 && *got_frame && avctx->width <= p->width && avctx->height <= p->height) {
            int shift = p->height - avctx->height;
            int subsample_h, subsample_v;

            av_pix_fmt_get_chroma_sub_sample(p->format, &subsample_h, &subsample_v);

            p->data[0] += p->linesize[0] * shift;
            if (p->data[2]) {
                p->data[1] += p->linesize[1] * (shift>>subsample_v);
                p->data[2] += p->linesize[2] * (shift>>subsample_v);
            }

            p->width = avctx->width;
            p->height = avctx->height;
        }
        avctx->pix_fmt = a->mjpeg_avctx->pix_fmt;
        return ret;
    }

    true_height = buf_size / (2*avctx->width);

    if(buf_size < 2*avctx->width * avctx->height) {
        av_log(avctx, AV_LOG_ERROR, "packet too small\n");
        return AVERROR_INVALIDDATA;
    }

    if ((ret = ff_get_buffer(avctx, p, 0)) < 0)
        return ret;
    p->pict_type= AV_PICTURE_TYPE_I;
    p->key_frame= 1;

    if(a->interlace) {
        buf += (true_height - avctx->height)*avctx->width;
        for(y = 0; y < avctx->height-1; y+=2) {
            memcpy(p->data[0] + (y+ a->tff)*p->linesize[0], buf , 2*avctx->width);
            memcpy(p->data[0] + (y+!a->tff)*p->linesize[0], buf + avctx->width*true_height+4, 2*avctx->width);
            buf += 2*avctx->width;
        }
    } else {
        buf += (true_height - avctx->height)*avctx->width*2;
        for(y = 0; y < avctx->height; y++) {
            memcpy(p->data[0] + y*p->linesize[0], buf, 2*avctx->width);
            buf += 2*avctx->width;
        }
    }

    *got_frame = 1;
    return buf_size;
}
