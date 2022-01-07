
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct TYPE_12__ {int pix_fmt; int height; int width; } ;
struct TYPE_11__ {int* linesize; int ** data; } ;
struct TYPE_10__ {int size; int flags; int * data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;






 int AV_PKT_FLAG_KEY ;
 int const AV_RB16 (int *) ;
 int EINVAL ;
 int av_log (TYPE_3__*,int ,char*) ;
 int bytestream_put_be16 (int **,int const) ;
 int ff_alloc_packet2 (TYPE_3__*,TYPE_1__*,int,int ) ;
 int memcpy (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int fits_encode_frame(AVCodecContext *avctx, AVPacket *pkt,
                            const AVFrame *pict, int *got_packet)
{
    AVFrame * const p = (AVFrame *)pict;
    uint8_t *bytestream, *bytestream_start, *ptr;
    const uint16_t flip = (1 << 15);
    uint64_t data_size = 0, padded_data_size = 0;
    int ret, bitpix, naxis3 = 1, i, j, k, bytes_left;
    int map[] = {2, 0, 1, 3};

    switch (avctx->pix_fmt) {
    case 128:
    case 129:
        map[0] = 0;
        if (avctx->pix_fmt == 128) {
            bitpix = 8;
        } else {
            bitpix = 16;
        }
        break;
    case 131:
    case 133:
        bitpix = 8;
        if (avctx->pix_fmt == 131) {
            naxis3 = 3;
        } else {
            naxis3 = 4;
        }
        break;
    case 130:
    case 132:
        bitpix = 16;
        if (avctx->pix_fmt == 130) {
            naxis3 = 3;
        } else {
            naxis3 = 4;
        }
        break;
    default:
        av_log(avctx, AV_LOG_ERROR, "unsupported pixel format\n");
        return AVERROR(EINVAL);
    }

    data_size = (bitpix >> 3) * avctx->height * avctx->width * naxis3;
    padded_data_size = ((data_size + 2879) / 2880 ) * 2880;

    if ((ret = ff_alloc_packet2(avctx, pkt, padded_data_size, 0)) < 0)
        return ret;

    bytestream_start =
    bytestream = pkt->data;

    for (k = 0; k < naxis3; k++) {
        for (i = 0; i < avctx->height; i++) {
            ptr = p->data[map[k]] + (avctx->height - i - 1) * p->linesize[map[k]];
            if (bitpix == 16) {
                for (j = 0; j < avctx->width; j++) {

                    bytestream_put_be16(&bytestream, AV_RB16(ptr) ^ flip);
                    ptr += 2;
                }
            } else {
                memcpy(bytestream, ptr, avctx->width);
                bytestream += avctx->width;
            }
        }
    }

    bytes_left = padded_data_size - data_size;
    memset(bytestream, 0, bytes_left);
    bytestream += bytes_left;

    pkt->size = bytestream - bytestream_start;
    pkt->flags |= AV_PKT_FLAG_KEY;
    *got_packet = 1;

    return 0;
}
