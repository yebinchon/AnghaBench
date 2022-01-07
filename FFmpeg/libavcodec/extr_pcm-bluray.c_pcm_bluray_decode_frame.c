
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
typedef void* int16_t ;
struct TYPE_13__ {int channels; scalar_t__ sample_fmt; int channel_layout; int debug; } ;
struct TYPE_12__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_11__ {int size; int * data; } ;
typedef int GetByteContext ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_SAMPLE_FMT_S16 ;
 int FFALIGN (int,int) ;
 int FF_DEBUG_BITSTREAM ;
 int av_log (TYPE_3__*,int ,char*) ;
 void* bytestream2_get_be16u (int *) ;
 int bytestream2_get_be24u (int *) ;
 int bytestream2_get_buffer (int *,void**,int) ;
 int bytestream2_init (int *,int const*,int) ;
 int bytestream2_skip (int *,int) ;
 int bytestream2_tell (int *) ;
 int ff_dlog (TYPE_3__*,char*,int,int) ;
 int ff_get_buffer (TYPE_3__*,TYPE_2__*,int ) ;
 int pcm_bluray_parse_header (TYPE_3__*,int const*) ;

__attribute__((used)) static int pcm_bluray_decode_frame(AVCodecContext *avctx, void *data,
                                   int *got_frame_ptr, AVPacket *avpkt)
{
    AVFrame *frame = data;
    const uint8_t *src = avpkt->data;
    int buf_size = avpkt->size;
    GetByteContext gb;
    int num_source_channels, channel, retval;
    int sample_size, samples;
    int16_t *dst16;
    int32_t *dst32;

    if (buf_size < 4) {
        av_log(avctx, AV_LOG_ERROR, "PCM packet too small\n");
        return AVERROR_INVALIDDATA;
    }

    if ((retval = pcm_bluray_parse_header(avctx, src)))
        return retval;
    src += 4;
    buf_size -= 4;

    bytestream2_init(&gb, src, buf_size);


    num_source_channels = FFALIGN(avctx->channels, 2);
    sample_size = (num_source_channels *
                   (avctx->sample_fmt == AV_SAMPLE_FMT_S16 ? 16 : 24)) >> 3;
    samples = buf_size / sample_size;


    frame->nb_samples = samples;
    if ((retval = ff_get_buffer(avctx, frame, 0)) < 0)
        return retval;
    dst16 = (int16_t *)frame->data[0];
    dst32 = (int32_t *)frame->data[0];

    if (samples) {
        switch (avctx->channel_layout) {

        case 129:
        case 135:
        case 136:
            samples *= num_source_channels;
            if (AV_SAMPLE_FMT_S16 == avctx->sample_fmt) {



                do {
                    *dst16++ = bytestream2_get_be16u(&gb);
                } while (--samples);

            } else {
                do {
                    *dst32++ = bytestream2_get_be24u(&gb) << 8;
                } while (--samples);
            }
            break;

        case 130:
        case 128:
        case 137:
        case 134:
            if (AV_SAMPLE_FMT_S16 == avctx->sample_fmt) {
                do {




                    channel = avctx->channels;
                    do {
                        *dst16++ = bytestream2_get_be16u(&gb);
                    } while (--channel);

                    bytestream2_skip(&gb, 2);
                } while (--samples);
            } else {
                do {
                    channel = avctx->channels;
                    do {
                        *dst32++ = bytestream2_get_be24u(&gb) << 8;
                    } while (--channel);
                    bytestream2_skip(&gb, 3);
                } while (--samples);
            }
            break;

        case 133:
            if (AV_SAMPLE_FMT_S16 == avctx->sample_fmt) {
                do {
                    dst16[0] = bytestream2_get_be16u(&gb);
                    dst16[1] = bytestream2_get_be16u(&gb);
                    dst16[2] = bytestream2_get_be16u(&gb);
                    dst16[4] = bytestream2_get_be16u(&gb);
                    dst16[5] = bytestream2_get_be16u(&gb);
                    dst16[3] = bytestream2_get_be16u(&gb);
                    dst16 += 6;
                } while (--samples);
            } else {
                do {
                    dst32[0] = bytestream2_get_be24u(&gb) << 8;
                    dst32[1] = bytestream2_get_be24u(&gb) << 8;
                    dst32[2] = bytestream2_get_be24u(&gb) << 8;
                    dst32[4] = bytestream2_get_be24u(&gb) << 8;
                    dst32[5] = bytestream2_get_be24u(&gb) << 8;
                    dst32[3] = bytestream2_get_be24u(&gb) << 8;
                    dst32 += 6;
                } while (--samples);
            }
            break;

        case 132:
            if (AV_SAMPLE_FMT_S16 == avctx->sample_fmt) {
                do {
                    dst16[0] = bytestream2_get_be16u(&gb);
                    dst16[1] = bytestream2_get_be16u(&gb);
                    dst16[2] = bytestream2_get_be16u(&gb);
                    dst16[5] = bytestream2_get_be16u(&gb);
                    dst16[3] = bytestream2_get_be16u(&gb);
                    dst16[4] = bytestream2_get_be16u(&gb);
                    dst16[6] = bytestream2_get_be16u(&gb);
                    dst16 += 7;
                    bytestream2_skip(&gb, 2);
                } while (--samples);
            } else {
                do {
                    dst32[0] = bytestream2_get_be24u(&gb) << 8;
                    dst32[1] = bytestream2_get_be24u(&gb) << 8;
                    dst32[2] = bytestream2_get_be24u(&gb) << 8;
                    dst32[5] = bytestream2_get_be24u(&gb) << 8;
                    dst32[3] = bytestream2_get_be24u(&gb) << 8;
                    dst32[4] = bytestream2_get_be24u(&gb) << 8;
                    dst32[6] = bytestream2_get_be24u(&gb) << 8;
                    dst32 += 7;
                    bytestream2_skip(&gb, 3);
                } while (--samples);
            }
            break;

        case 131:
            if (AV_SAMPLE_FMT_S16 == avctx->sample_fmt) {
                do {
                    dst16[0] = bytestream2_get_be16u(&gb);
                    dst16[1] = bytestream2_get_be16u(&gb);
                    dst16[2] = bytestream2_get_be16u(&gb);
                    dst16[6] = bytestream2_get_be16u(&gb);
                    dst16[4] = bytestream2_get_be16u(&gb);
                    dst16[5] = bytestream2_get_be16u(&gb);
                    dst16[7] = bytestream2_get_be16u(&gb);
                    dst16[3] = bytestream2_get_be16u(&gb);
                    dst16 += 8;
                } while (--samples);
            } else {
                do {
                    dst32[0] = bytestream2_get_be24u(&gb) << 8;
                    dst32[1] = bytestream2_get_be24u(&gb) << 8;
                    dst32[2] = bytestream2_get_be24u(&gb) << 8;
                    dst32[6] = bytestream2_get_be24u(&gb) << 8;
                    dst32[4] = bytestream2_get_be24u(&gb) << 8;
                    dst32[5] = bytestream2_get_be24u(&gb) << 8;
                    dst32[7] = bytestream2_get_be24u(&gb) << 8;
                    dst32[3] = bytestream2_get_be24u(&gb) << 8;
                    dst32 += 8;
                } while (--samples);
            }
            break;
        }
    }

    *got_frame_ptr = 1;

    retval = bytestream2_tell(&gb);
    if (avctx->debug & FF_DEBUG_BITSTREAM)
        ff_dlog(avctx, "pcm_bluray_decode_frame: decoded %d -> %d bytes\n",
                retval, buf_size);
    return retval + 4;
}
