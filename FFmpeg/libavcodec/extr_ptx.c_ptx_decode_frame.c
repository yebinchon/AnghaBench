
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {int pix_fmt; } ;
struct TYPE_12__ {unsigned int* linesize; int ** data; int pict_type; } ;
struct TYPE_11__ {int size; int * data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_WARNING ;
 int AV_PICTURE_TYPE_I ;
 int AV_PIX_FMT_BGR555LE ;
 int AV_RL16 (int const*) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int avpriv_request_sample (TYPE_3__*,char*) ;
 int ff_get_buffer (TYPE_3__*,TYPE_2__* const,int ) ;
 int ff_set_dimensions (TYPE_3__*,unsigned int,unsigned int) ;
 int memcpy (int *,int const*,unsigned int) ;

__attribute__((used)) static int ptx_decode_frame(AVCodecContext *avctx, void *data, int *got_frame,
                            AVPacket *avpkt) {
    const uint8_t *buf = avpkt->data;
    const uint8_t *buf_end = avpkt->data + avpkt->size;
    AVFrame * const p = data;
    unsigned int offset, w, h, y, stride, bytes_per_pixel;
    int ret;
    uint8_t *ptr;

    if (buf_end - buf < 14)
        return AVERROR_INVALIDDATA;
    offset = AV_RL16(buf);
    w = AV_RL16(buf+8);
    h = AV_RL16(buf+10);
    bytes_per_pixel = AV_RL16(buf+12) >> 3;

    if (bytes_per_pixel != 2) {
        avpriv_request_sample(avctx, "Image format not RGB15");
        return AVERROR_PATCHWELCOME;
    }

    avctx->pix_fmt = AV_PIX_FMT_BGR555LE;

    if (buf_end - buf < offset)
        return AVERROR_INVALIDDATA;
    if (offset != 0x2c)
        avpriv_request_sample(avctx, "offset != 0x2c");

    buf += offset;

    if (buf_end - buf < w * bytes_per_pixel)
        return AVERROR_INVALIDDATA;

    if ((ret = ff_set_dimensions(avctx, w, h)) < 0)
        return ret;

    if ((ret = ff_get_buffer(avctx, p, 0)) < 0)
        return ret;

    p->pict_type = AV_PICTURE_TYPE_I;

    ptr = p->data[0];
    stride = p->linesize[0];

    for (y = 0; y < h && buf_end - buf >= w * bytes_per_pixel; y++) {
        memcpy(ptr, buf, w*bytes_per_pixel);
        ptr += stride;
        buf += w*bytes_per_pixel;
    }

    *got_frame = 1;

    if (y < h) {
        av_log(avctx, AV_LOG_WARNING, "incomplete packet\n");
        return avpkt->size;
    }

    return offset + w*h*bytes_per_pixel;
}
