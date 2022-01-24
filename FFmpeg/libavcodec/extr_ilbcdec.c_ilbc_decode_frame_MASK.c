#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int16_t ;
struct TYPE_19__ {int start; int /*<<< orphan*/  lsf; int /*<<< orphan*/  cb_index; } ;
struct TYPE_18__ {TYPE_1__* priv_data; } ;
struct TYPE_17__ {int nb_samples; int** data; } ;
struct TYPE_16__ {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_15__ {int mode; int* plc_residual; int block_samples; int* syntdenum; int* decresidual; int nsub; int last_lag; int* syntMem; int* old_syntdenum; int prev_enh_pl; int /*<<< orphan*/  hpimemx; int /*<<< orphan*/  hpimemy; scalar_t__ enhancer; int /*<<< orphan*/  plc_lpc; TYPE_6__ frame; int /*<<< orphan*/  lsfdeq; int /*<<< orphan*/  weightdenum; int /*<<< orphan*/  lpc_n; int /*<<< orphan*/  gb; } ;
typedef  int /*<<< orphan*/  ILBCFrame ;
typedef  TYPE_1__ ILBCContext ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 size_t ENH_BLOCKL ; 
 size_t LPC_FILTERORDER ; 
 int SUBL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_6__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int,TYPE_1__*) ; 
 int FUNC2 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int*,size_t,int) ; 
 int /*<<< orphan*/  hp_out_coeffs ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 
 int FUNC13 (int*,int*,size_t,int,int,int) ; 

__attribute__((used)) static int FUNC14(AVCodecContext *avctx, void *data,
                             int *got_frame_ptr, AVPacket *avpkt)
{
    const uint8_t *buf = avpkt->data;
    AVFrame *frame     = data;
    ILBCContext *s     = avctx->priv_data;
    int mode = s->mode, ret;
    int16_t *plc_data = &s->plc_residual[LPC_FILTERORDER];

    if ((ret = FUNC6(&s->gb, buf, avpkt->size)) < 0)
        return ret;
    FUNC11(&s->frame, 0, sizeof(ILBCFrame));

    frame->nb_samples = s->block_samples;
    if ((ret = FUNC2(avctx, frame, 0)) < 0)
        return ret;

    if (FUNC12(s))
        mode = 0;
    if (s->frame.start < 1 || s->frame.start > 5)
        mode = 0;

    if (mode) {
        FUNC5(s->frame.cb_index);

        FUNC8(s->lsfdeq, s->frame.lsf, s->lpc_n);
        FUNC7(s->lsfdeq, LPC_FILTERORDER, s->lpc_n);
        FUNC9(s->syntdenum, s->weightdenum,
                        s->lsfdeq, LPC_FILTERORDER, s);
        FUNC0(s, &s->frame, s->decresidual, s->syntdenum);

        FUNC1(s->plc_residual, s->plc_lpc, 0,
                               s->decresidual, s->syntdenum + (LPC_FILTERORDER + 1) * (s->nsub - 1),
                               s->last_lag, s);

        FUNC10(s->decresidual, s->plc_residual, s->block_samples * 2);
    }

    if (s->enhancer) {
        /* TODO */
    } else {
        int16_t lag, i;

        /* Find last lag (since the enhancer is not called to give this info) */
        if (s->mode == 20) {
            lag = FUNC13(&s->decresidual[s->block_samples-60], &s->decresidual[s->block_samples-80],
                              60, 80, 20, -1);
        } else {
            lag = FUNC13(&s->decresidual[s->block_samples-ENH_BLOCKL],
                              &s->decresidual[s->block_samples-ENH_BLOCKL-20],
                              ENH_BLOCKL, 100, 20, -1);
        }

        /* Store lag (it is needed if next packet is lost) */
        s->last_lag = lag;

        /* copy data and run synthesis filter */
        FUNC10(plc_data, s->decresidual, s->block_samples * 2);

        /* Set up the filter state */
        FUNC10(&plc_data[-LPC_FILTERORDER], s->syntMem, LPC_FILTERORDER * 2);

        for (i = 0; i < s->nsub; i++) {
            FUNC3(plc_data+i*SUBL, plc_data+i*SUBL,
                                      s->syntdenum + i*(LPC_FILTERORDER + 1),
                                      LPC_FILTERORDER + 1, SUBL);
        }

        /* Save the filter state */
        FUNC10(s->syntMem, &plc_data[s->block_samples-LPC_FILTERORDER], LPC_FILTERORDER * 2);
    }

    FUNC10(frame->data[0], plc_data, s->block_samples * 2);

    FUNC4((int16_t *)frame->data[0], hp_out_coeffs,
              s->hpimemy, s->hpimemx, s->block_samples);

    FUNC10(s->old_syntdenum, s->syntdenum, s->nsub*(LPC_FILTERORDER + 1) * 2);

    s->prev_enh_pl = 0;
    if (mode == 0)
        s->prev_enh_pl = 1;

    *got_frame_ptr = 1;

    return avpkt->size;
}