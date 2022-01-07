
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_15__ {int key_frame; int pict_type; } ;
struct TYPE_14__ {TYPE_1__* priv_data; } ;
struct TYPE_13__ {int* data; int size; } ;
struct TYPE_12__ {int decomp_size; TYPE_5__* pic; int height; int linelen; int decomp_buf; } ;
typedef TYPE_1__ CamStudioContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_TYPE_I ;
 int AV_PICTURE_TYPE_P ;
 int ENOSYS ;
 int Z_OK ;
 int add_frame_default (TYPE_5__*,int ,int ,int ) ;
 int av_frame_ref (void*,TYPE_5__*) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int av_lzo1x_decode (int ,int*,int const*,int*) ;
 int copy_frame_default (TYPE_5__*,int ,int ,int ) ;
 int ff_reget_buffer (TYPE_3__*,TYPE_5__*,int ) ;
 int uncompress (int ,unsigned long*,int const*,int) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx, void *data, int *got_frame,
                        AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size = avpkt->size;
    CamStudioContext *c = avctx->priv_data;
    int ret;

    if (buf_size < 2) {
        av_log(avctx, AV_LOG_ERROR, "coded frame too small\n");
        return AVERROR_INVALIDDATA;
    }

    if ((ret = ff_reget_buffer(avctx, c->pic, 0)) < 0)
        return ret;


    switch ((buf[0] >> 1) & 7) {
    case 0: {
        int outlen = c->decomp_size, inlen = buf_size - 2;
        if (av_lzo1x_decode(c->decomp_buf, &outlen, &buf[2], &inlen) || outlen) {
            av_log(avctx, AV_LOG_ERROR, "error during lzo decompression\n");
            return AVERROR_INVALIDDATA;
        }
        break;
    }
    case 1: {
        av_log(avctx, AV_LOG_ERROR, "compiled without zlib support\n");
        return AVERROR(ENOSYS);

    }
    default:
        av_log(avctx, AV_LOG_ERROR, "unknown compression\n");
        return AVERROR_INVALIDDATA;
    }


    if (buf[0] & 1) {
        c->pic->pict_type = AV_PICTURE_TYPE_I;
        c->pic->key_frame = 1;
              copy_frame_default(c->pic, c->decomp_buf,
                                 c->linelen, c->height);
    } else {
        c->pic->pict_type = AV_PICTURE_TYPE_P;
        c->pic->key_frame = 0;
              add_frame_default(c->pic, c->decomp_buf,
                                c->linelen, c->height);
    }

    *got_frame = 1;
    if ((ret = av_frame_ref(data, c->pic)) < 0)
        return ret;

    return buf_size;
}
