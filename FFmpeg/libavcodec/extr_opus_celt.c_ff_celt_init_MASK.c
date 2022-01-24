#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int flags; } ;
struct TYPE_9__ {int output_channels; int apply_phase_inv; int /*<<< orphan*/  opusdsp; int /*<<< orphan*/  dsp; int /*<<< orphan*/  pvq; int /*<<< orphan*/ * imdct; TYPE_2__* avctx; } ;
typedef  TYPE_1__ CeltFrame ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_CODEC_FLAG_BITEXACT ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int,int,float) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(AVCodecContext *avctx, CeltFrame **f, int output_channels,
                 int apply_phase_inv)
{
    CeltFrame *frm;
    int i, ret;

    if (output_channels != 1 && output_channels != 2) {
        FUNC2(avctx, AV_LOG_ERROR, "Invalid number of output channels: %d\n",
               output_channels);
        return FUNC0(EINVAL);
    }

    frm = FUNC3(sizeof(*frm));
    if (!frm)
        return FUNC0(ENOMEM);

    frm->avctx           = avctx;
    frm->output_channels = output_channels;
    frm->apply_phase_inv = apply_phase_inv;

    for (i = 0; i < FUNC1(frm->imdct); i++)
        if ((ret = FUNC8(&frm->imdct[i], 1, i + 3, -1.0f/32768)) < 0)
            goto fail;

    if ((ret = FUNC7(&frm->pvq, 0)) < 0)
        goto fail;

    frm->dsp = FUNC4(avctx->flags & AV_CODEC_FLAG_BITEXACT);
    if (!frm->dsp) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    FUNC9(&frm->opusdsp);
    FUNC5(frm);

    *f = frm;

    return 0;
fail:
    FUNC6(&frm);
    return ret;
}