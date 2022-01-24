#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
typedef  int int16_t ;
struct TYPE_17__ {TYPE_2__* priv_data; } ;
struct TYPE_16__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_15__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* apply_qmf ) (int*,int*) ;} ;
struct TYPE_14__ {int bits_per_codeword; int* prev_samples; int prev_samples_pos; TYPE_1__ dsp; TYPE_10__* band; } ;
struct TYPE_12__ {int const scale_factor; scalar_t__ s_predictor; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_2__ G722Context ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ PREV_SAMPLES_BUF_SIZE ; 
 void* FUNC0 (int) ; 
 int FUNC1 (scalar_t__,int) ; 
 int* ff_g722_high_inv_quant ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*,int) ; 
 int FUNC4 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int** low_inv_quants ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*) ; 

__attribute__((used)) static int FUNC10(AVCodecContext *avctx, void *data,
                             int *got_frame_ptr, AVPacket *avpkt)
{
    G722Context *c = avctx->priv_data;
    AVFrame *frame = data;
    int16_t *out_buf;
    int j, ret;
    const int skip = 8 - c->bits_per_codeword;
    const int16_t *quantizer_table = low_inv_quants[skip];
    GetBitContext gb;

    /* get output buffer */
    frame->nb_samples = avpkt->size * 2;
    if ((ret = FUNC4(avctx, frame, 0)) < 0)
        return ret;
    out_buf = (int16_t *)frame->data[0];

    ret = FUNC6(&gb, avpkt->data, avpkt->size);
    if (ret < 0)
        return ret;

    for (j = 0; j < avpkt->size; j++) {
        int ilow, ihigh, rlow, rhigh, dhigh;
        int xout[2];

        ihigh = FUNC5(&gb, 2);
        ilow = FUNC5(&gb, 6 - skip);
        FUNC8(&gb, skip);

        rlow = FUNC1((c->band[0].scale_factor * quantizer_table[ilow] >> 10)
                      + c->band[0].s_predictor, 14);

        FUNC3(&c->band[0], ilow >> (2 - skip));

        dhigh = c->band[1].scale_factor * ff_g722_high_inv_quant[ihigh] >> 10;
        rhigh = FUNC1(dhigh + c->band[1].s_predictor, 14);

        FUNC2(&c->band[1], dhigh, ihigh);

        c->prev_samples[c->prev_samples_pos++] = rlow + rhigh;
        c->prev_samples[c->prev_samples_pos++] = rlow - rhigh;
        c->dsp.apply_qmf(c->prev_samples + c->prev_samples_pos - 24, xout);
        *out_buf++ = FUNC0(xout[0] >> 11);
        *out_buf++ = FUNC0(xout[1] >> 11);
        if (c->prev_samples_pos >= PREV_SAMPLES_BUF_SIZE) {
            FUNC7(c->prev_samples, c->prev_samples + c->prev_samples_pos - 22,
                    22 * sizeof(c->prev_samples[0]));
            c->prev_samples_pos = 22;
        }
    }

    *got_frame_ptr = 1;

    return avpkt->size;
}