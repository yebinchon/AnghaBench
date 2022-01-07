
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int int8_t ;
typedef int int16_t ;
struct TYPE_15__ {int channels; int codec_tag; TYPE_1__* codec; TYPE_2__* priv_data; } ;
struct TYPE_14__ {int nb_samples; size_t** data; } ;
struct TYPE_13__ {int size; int data; } ;
struct TYPE_12__ {int* array; int* sample; int* sol_table; } ;
struct TYPE_11__ {int id; } ;
typedef int GetByteContext ;
typedef TYPE_2__ DPCMContext ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVCodecContext ;


 int AVERROR (int ) ;






 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int EINVAL ;
 void* av_clip_int16 (int) ;
 void* av_clip_uint8 (int) ;
 int av_log (TYPE_5__*,int ,char*) ;
 size_t bytestream2_get_byteu (int *) ;
 int bytestream2_get_le16u (int *) ;
 int bytestream2_init (int *,int ,int) ;
 int bytestream2_skipu (int *,int) ;
 int ff_get_buffer (TYPE_5__*,TYPE_4__*,int ) ;
 int* interplay_delta_table ;
 int sign_extend (int,int) ;
 int* sol_table_16 ;

__attribute__((used)) static int dpcm_decode_frame(AVCodecContext *avctx, void *data,
                             int *got_frame_ptr, AVPacket *avpkt)
{
    int buf_size = avpkt->size;
    DPCMContext *s = avctx->priv_data;
    AVFrame *frame = data;
    int out = 0, ret;
    int predictor[2];
    int ch = 0;
    int stereo = avctx->channels - 1;
    int16_t *output_samples, *samples_end;
    GetByteContext gb;

    if (stereo && (buf_size & 1))
        buf_size--;
    bytestream2_init(&gb, avpkt->data, buf_size);


    switch(avctx->codec->id) {
    case 131:
        out = buf_size - 8;
        break;
    case 132:
        out = buf_size - 6 - avctx->channels;
        break;
    case 128:
        out = buf_size - 2 * avctx->channels;
        break;
    case 129:
        if (avctx->codec_tag != 3)
            out = buf_size * 2;
        else
            out = buf_size;
        break;
    case 133:
    case 130:
        out = buf_size;
        break;
    }
    if (out <= 0) {
        av_log(avctx, AV_LOG_ERROR, "packet is too small\n");
        return AVERROR(EINVAL);
    }
    if (out % avctx->channels) {
        av_log(avctx, AV_LOG_WARNING, "channels have differing number of samples\n");
    }


    frame->nb_samples = (out + avctx->channels - 1) / avctx->channels;
    if ((ret = ff_get_buffer(avctx, frame, 0)) < 0)
        return ret;
    output_samples = (int16_t *)frame->data[0];
    samples_end = output_samples + out;

    switch(avctx->codec->id) {

    case 131:
        bytestream2_skipu(&gb, 6);

        if (stereo) {
            predictor[1] = sign_extend(bytestream2_get_byteu(&gb) << 8, 16);
            predictor[0] = sign_extend(bytestream2_get_byteu(&gb) << 8, 16);
        } else {
            predictor[0] = sign_extend(bytestream2_get_le16u(&gb), 16);
        }


        while (output_samples < samples_end) {
            predictor[ch] += s->array[bytestream2_get_byteu(&gb)];
            predictor[ch] = av_clip_int16(predictor[ch]);
            *output_samples++ = predictor[ch];


            ch ^= stereo;
        }
        break;

    case 132:
        bytestream2_skipu(&gb, 6);

        for (ch = 0; ch < avctx->channels; ch++) {
            predictor[ch] = sign_extend(bytestream2_get_le16u(&gb), 16);
            *output_samples++ = predictor[ch];
        }

        ch = 0;
        while (output_samples < samples_end) {
            predictor[ch] += interplay_delta_table[bytestream2_get_byteu(&gb)];
            predictor[ch] = av_clip_int16(predictor[ch]);
            *output_samples++ = predictor[ch];


            ch ^= stereo;
        }
        break;

    case 128:
    {
        int shift[2] = { 4, 4 };

        for (ch = 0; ch < avctx->channels; ch++)
            predictor[ch] = sign_extend(bytestream2_get_le16u(&gb), 16);

        ch = 0;
        while (output_samples < samples_end) {
            int diff = bytestream2_get_byteu(&gb);
            int n = diff & 3;

            if (n == 3)
                shift[ch]++;
            else
                shift[ch] -= (2 * n);
            diff = sign_extend((diff &~ 3) << 8, 16);


            if (shift[ch] < 0)
                shift[ch] = 0;

            diff >>= shift[ch];
            predictor[ch] += diff;

            predictor[ch] = av_clip_int16(predictor[ch]);
            *output_samples++ = predictor[ch];


            ch ^= stereo;
        }
        break;
    }
    case 129:
        if (avctx->codec_tag != 3) {
            uint8_t *output_samples_u8 = frame->data[0],
                    *samples_end_u8 = output_samples_u8 + out;
            while (output_samples_u8 < samples_end_u8) {
                int n = bytestream2_get_byteu(&gb);

                s->sample[0] += s->sol_table[n >> 4];
                s->sample[0] = av_clip_uint8(s->sample[0]);
                *output_samples_u8++ = s->sample[0];

                s->sample[stereo] += s->sol_table[n & 0x0F];
                s->sample[stereo] = av_clip_uint8(s->sample[stereo]);
                *output_samples_u8++ = s->sample[stereo];
            }
        } else {
            while (output_samples < samples_end) {
                int n = bytestream2_get_byteu(&gb);
                if (n & 0x80) s->sample[ch] -= sol_table_16[n & 0x7F];
                else s->sample[ch] += sol_table_16[n & 0x7F];
                s->sample[ch] = av_clip_int16(s->sample[ch]);
                *output_samples++ = s->sample[ch];

                ch ^= stereo;
            }
        }
        break;

    case 130:
        while (output_samples < samples_end) {
            int8_t n = bytestream2_get_byteu(&gb);

            if (!(n & 1))
                s->sample[ch] = 0;
            s->sample[ch] += s->array[n + 128];
            s->sample[ch] = av_clip_int16(s->sample[ch]);
            *output_samples++ = s->sample[ch];
            ch ^= stereo;
        }
        break;

    case 133: {
        int idx = 0;

        while (output_samples < samples_end) {
            uint8_t n = bytestream2_get_byteu(&gb);

            *output_samples++ = s->sample[idx] += s->array[n];
            idx ^= 1;
        }
        }
        break;
    }

    *got_frame_ptr = 1;

    return avpkt->size;
}
