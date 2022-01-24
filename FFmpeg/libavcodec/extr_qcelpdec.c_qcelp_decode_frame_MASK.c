#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_11__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_25__ {TYPE_1__* priv_data; } ;
struct TYPE_24__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_23__ {int* data; int size; } ;
struct TYPE_22__ {size_t index; int bitpos; int /*<<< orphan*/  bitlen; } ;
struct TYPE_20__ {int* plag; scalar_t__* pfrac; int /*<<< orphan*/  cbgain; scalar_t__ reserved; } ;
struct TYPE_21__ {size_t bitrate; int first16bits; float* formant_mem; float* prev_lspf; size_t prev_bitrate; scalar_t__ erasure_count; TYPE_11__ frame; int /*<<< orphan*/  gb; } ;
typedef  int /*<<< orphan*/  QCELPFrame ;
typedef  TYPE_1__ QCELPContext ;
typedef  TYPE_2__ QCELPBitmap ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 size_t I_F_Q ; 
 size_t RATE_HALF ; 
 size_t RATE_OCTAVE ; 
 size_t RATE_QUARTER ; 
 size_t SILENCE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,float*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,float*,float*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,float*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,float*) ; 
 size_t FUNC6 (TYPE_5__*,int,int const**) ; 
 int /*<<< orphan*/  FUNC7 (float*,float*,float*,int,int) ; 
 int FUNC8 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,int const*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,float*,float*,int) ; 
 int /*<<< orphan*/  FUNC12 (float*,float*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_11__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,float*,float*) ; 
 int* qcelp_unpacking_bitmaps_lengths ; 
 TYPE_2__** qcelp_unpacking_bitmaps_per_rate ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,char*) ; 

__attribute__((used)) static int FUNC16(AVCodecContext *avctx, void *data,
                              int *got_frame_ptr, AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    int buf_size       = avpkt->size;
    QCELPContext *q    = avctx->priv_data;
    AVFrame *frame     = data;
    float *outbuffer;
    int   i, ret;
    float quantized_lspf[10], lpc[10];
    float gain[16];
    float *formant_mem;

    /* get output buffer */
    frame->nb_samples = 160;
    if ((ret = FUNC8(avctx, frame, 0)) < 0)
        return ret;
    outbuffer = (float *)frame->data[0];

    if ((q->bitrate = FUNC6(avctx, buf_size, &buf)) == I_F_Q) {
        FUNC15(avctx, "Bitrate cannot be determined.");
        goto erasure;
    }

    if (q->bitrate == RATE_OCTAVE &&
        (q->first16bits = FUNC0(buf)) == 0xFFFF) {
        FUNC15(avctx, "Bitrate is 1/8 and first 16 bits are on.");
        goto erasure;
    }

    if (q->bitrate > SILENCE) {
        const QCELPBitmap *bitmaps     = qcelp_unpacking_bitmaps_per_rate[q->bitrate];
        const QCELPBitmap *bitmaps_end = qcelp_unpacking_bitmaps_per_rate[q->bitrate] +
                                         qcelp_unpacking_bitmaps_lengths[q->bitrate];
        uint8_t *unpacked_data         = (uint8_t *)&q->frame;

        if ((ret = FUNC10(&q->gb, buf, buf_size)) < 0)
            return ret;

        FUNC13(&q->frame, 0, sizeof(QCELPFrame));

        for (; bitmaps < bitmaps_end; bitmaps++)
            unpacked_data[bitmaps->index] |= FUNC9(&q->gb, bitmaps->bitlen) << bitmaps->bitpos;

        // Check for erasures/blanks on rates 1, 1/4 and 1/8.
        if (q->frame.reserved) {
            FUNC15(avctx, "Wrong data in reserved frame area.");
            goto erasure;
        }
        if (q->bitrate == RATE_QUARTER &&
            FUNC2(q->frame.cbgain)) {
            FUNC15(avctx, "Codebook gain sanity check failed.");
            goto erasure;
        }

        if (q->bitrate >= RATE_HALF) {
            for (i = 0; i < 4; i++) {
                if (q->frame.pfrac[i] && q->frame.plag[i] >= 124) {
                    FUNC15(avctx, "Cannot initialize pitch filter.");
                    goto erasure;
                }
            }
        }
    }

    FUNC4(q, gain);
    FUNC3(q, gain, outbuffer);

    if (FUNC5(q, quantized_lspf) < 0) {
        FUNC15(avctx, "Badly received packets in frame.");
        goto erasure;
    }

    FUNC1(q, outbuffer);

    if (q->bitrate == I_F_Q) {
erasure:
        q->bitrate = I_F_Q;
        q->erasure_count++;
        FUNC4(q, gain);
        FUNC3(q, gain, outbuffer);
        FUNC5(q, quantized_lspf);
        FUNC1(q, outbuffer);
    } else
        q->erasure_count = 0;

    formant_mem = q->formant_mem + 10;
    for (i = 0; i < 4; i++) {
        FUNC11(q, quantized_lspf, lpc, i);
        FUNC7(formant_mem, lpc,
                                     outbuffer + i * 40, 40, 10);
        formant_mem += 40;
    }

    // postfilter, as per TIA/EIA/IS-733 2.4.8.6
    FUNC14(q, outbuffer, lpc);

    FUNC12(q->formant_mem, q->formant_mem + 160, 10 * sizeof(float));

    FUNC12(q->prev_lspf, quantized_lspf, sizeof(q->prev_lspf));
    q->prev_bitrate  = q->bitrate;

    *got_frame_ptr = 1;

    return buf_size;
}