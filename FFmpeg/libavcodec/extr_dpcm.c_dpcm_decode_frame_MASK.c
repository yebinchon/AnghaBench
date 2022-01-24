#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  int int8_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_15__ {int channels; int codec_tag; TYPE_1__* codec; TYPE_2__* priv_data; } ;
struct TYPE_14__ {int nb_samples; size_t** data; } ;
struct TYPE_13__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_12__ {int* array; int* sample; int* sol_table; } ;
struct TYPE_11__ {int id; } ;
typedef  int /*<<< orphan*/  GetByteContext ;
typedef  TYPE_2__ DPCMContext ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_CODEC_ID_GREMLIN_DPCM 133 
#define  AV_CODEC_ID_INTERPLAY_DPCM 132 
#define  AV_CODEC_ID_ROQ_DPCM 131 
#define  AV_CODEC_ID_SDX2_DPCM 130 
#define  AV_CODEC_ID_SOL_DPCM 129 
#define  AV_CODEC_ID_XAN_DPCM 128 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EINVAL ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int* interplay_delta_table ; 
 int FUNC9 (int,int) ; 
 int* sol_table_16 ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx, void *data,
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
    FUNC6(&gb, avpkt->data, buf_size);

    /* calculate output size */
    switch(avctx->codec->id) {
    case AV_CODEC_ID_ROQ_DPCM:
        out = buf_size - 8;
        break;
    case AV_CODEC_ID_INTERPLAY_DPCM:
        out = buf_size - 6 - avctx->channels;
        break;
    case AV_CODEC_ID_XAN_DPCM:
        out = buf_size - 2 * avctx->channels;
        break;
    case AV_CODEC_ID_SOL_DPCM:
        if (avctx->codec_tag != 3)
            out = buf_size * 2;
        else
            out = buf_size;
        break;
    case AV_CODEC_ID_GREMLIN_DPCM:
    case AV_CODEC_ID_SDX2_DPCM:
        out = buf_size;
        break;
    }
    if (out <= 0) {
        FUNC3(avctx, AV_LOG_ERROR, "packet is too small\n");
        return FUNC0(EINVAL);
    }
    if (out % avctx->channels) {
        FUNC3(avctx, AV_LOG_WARNING, "channels have differing number of samples\n");
    }

    /* get output buffer */
    frame->nb_samples = (out + avctx->channels - 1) / avctx->channels;
    if ((ret = FUNC8(avctx, frame, 0)) < 0)
        return ret;
    output_samples = (int16_t *)frame->data[0];
    samples_end = output_samples + out;

    switch(avctx->codec->id) {

    case AV_CODEC_ID_ROQ_DPCM:
        FUNC7(&gb, 6);

        if (stereo) {
            predictor[1] = FUNC9(FUNC4(&gb) << 8, 16);
            predictor[0] = FUNC9(FUNC4(&gb) << 8, 16);
        } else {
            predictor[0] = FUNC9(FUNC5(&gb), 16);
        }

        /* decode the samples */
        while (output_samples < samples_end) {
            predictor[ch] += s->array[FUNC4(&gb)];
            predictor[ch]  = FUNC1(predictor[ch]);
            *output_samples++ = predictor[ch];

            /* toggle channel */
            ch ^= stereo;
        }
        break;

    case AV_CODEC_ID_INTERPLAY_DPCM:
        FUNC7(&gb, 6);  /* skip over the stream mask and stream length */

        for (ch = 0; ch < avctx->channels; ch++) {
            predictor[ch] = FUNC9(FUNC5(&gb), 16);
            *output_samples++ = predictor[ch];
        }

        ch = 0;
        while (output_samples < samples_end) {
            predictor[ch] += interplay_delta_table[FUNC4(&gb)];
            predictor[ch]  = FUNC1(predictor[ch]);
            *output_samples++ = predictor[ch];

            /* toggle channel */
            ch ^= stereo;
        }
        break;

    case AV_CODEC_ID_XAN_DPCM:
    {
        int shift[2] = { 4, 4 };

        for (ch = 0; ch < avctx->channels; ch++)
            predictor[ch] = FUNC9(FUNC5(&gb), 16);

        ch = 0;
        while (output_samples < samples_end) {
            int diff = FUNC4(&gb);
            int n    = diff & 3;

            if (n == 3)
                shift[ch]++;
            else
                shift[ch] -= (2 * n);
            diff = FUNC9((diff &~ 3) << 8, 16);

            /* saturate the shifter to a lower limit of 0 */
            if (shift[ch] < 0)
                shift[ch] = 0;

            diff >>= shift[ch];
            predictor[ch] += diff;

            predictor[ch] = FUNC1(predictor[ch]);
            *output_samples++ = predictor[ch];

            /* toggle channel */
            ch ^= stereo;
        }
        break;
    }
    case AV_CODEC_ID_SOL_DPCM:
        if (avctx->codec_tag != 3) {
            uint8_t *output_samples_u8 = frame->data[0],
                    *samples_end_u8 = output_samples_u8 + out;
            while (output_samples_u8 < samples_end_u8) {
                int n = FUNC4(&gb);

                s->sample[0] += s->sol_table[n >> 4];
                s->sample[0]  = FUNC2(s->sample[0]);
                *output_samples_u8++ = s->sample[0];

                s->sample[stereo] += s->sol_table[n & 0x0F];
                s->sample[stereo]  = FUNC2(s->sample[stereo]);
                *output_samples_u8++ = s->sample[stereo];
            }
        } else {
            while (output_samples < samples_end) {
                int n = FUNC4(&gb);
                if (n & 0x80) s->sample[ch] -= sol_table_16[n & 0x7F];
                else          s->sample[ch] += sol_table_16[n & 0x7F];
                s->sample[ch] = FUNC1(s->sample[ch]);
                *output_samples++ = s->sample[ch];
                /* toggle channel */
                ch ^= stereo;
            }
        }
        break;

    case AV_CODEC_ID_SDX2_DPCM:
        while (output_samples < samples_end) {
            int8_t n = FUNC4(&gb);

            if (!(n & 1))
                s->sample[ch] = 0;
            s->sample[ch] += s->array[n + 128];
            s->sample[ch]  = FUNC1(s->sample[ch]);
            *output_samples++ = s->sample[ch];
            ch ^= stereo;
        }
        break;

    case AV_CODEC_ID_GREMLIN_DPCM: {
        int idx = 0;

        while (output_samples < samples_end) {
            uint8_t n = FUNC4(&gb);

            *output_samples++ = s->sample[idx] += s->array[n];
            idx ^= 1;
        }
        }
        break;
    }

    *got_frame_ptr = 1;

    return avpkt->size;
}