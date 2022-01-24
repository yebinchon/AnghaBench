#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_7__ {int bps; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* lpc32 ) (int /*<<< orphan*/ *,int*,int,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* lpc16 ) (int /*<<< orphan*/ *,int*,int,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  blocksize; TYPE_2__ flac_stream_info; TYPE_1__ dsp; scalar_t__ buggy_lpc; int /*<<< orphan*/  gb; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_3__ FLACContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (int) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(FLACContext *s, int32_t *decoded, int pred_order,
                               int bps)
{
    int i, ret;
    int coeff_prec, qlevel;
    int coeffs[32];

    /* warm up samples */
    for (i = 0; i < pred_order; i++) {
        decoded[i] = FUNC5(&s->gb, bps);
    }

    coeff_prec = FUNC3(&s->gb, 4) + 1;
    if (coeff_prec == 16) {
        FUNC0(s->avctx, AV_LOG_ERROR, "invalid coeff precision\n");
        return AVERROR_INVALIDDATA;
    }
    qlevel = FUNC4(&s->gb, 5);
    if (qlevel < 0) {
        FUNC0(s->avctx, AV_LOG_ERROR, "qlevel %d not supported, maybe buggy stream\n",
               qlevel);
        return AVERROR_INVALIDDATA;
    }

    for (i = 0; i < pred_order; i++) {
        coeffs[pred_order - i - 1] = FUNC4(&s->gb, coeff_prec);
    }

    if ((ret = FUNC2(s, decoded, pred_order)) < 0)
        return ret;

    if (   (    s->buggy_lpc && s->flac_stream_info.bps <= 16)
        || (   !s->buggy_lpc && bps <= 16
            && bps + coeff_prec + FUNC1(pred_order) <= 32)) {
        s->dsp.lpc16(decoded, coeffs, pred_order, qlevel, s->blocksize);
    } else {
        s->dsp.lpc32(decoded, coeffs, pred_order, qlevel, s->blocksize);
        if (s->flac_stream_info.bps <= 16)
            FUNC6(decoded, coeffs, pred_order, qlevel, s->blocksize, bps);
    }

    return 0;
}