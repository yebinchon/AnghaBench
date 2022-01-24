#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int huff_lsbs; void* codebook; int /*<<< orphan*/  huff_offset; TYPE_3__* filter_params; } ;
struct TYPE_9__ {int order; scalar_t__ shift; } ;
struct TYPE_8__ {int /*<<< orphan*/  avctx; TYPE_1__* substream; } ;
struct TYPE_7__ {int param_presence_flags; TYPE_4__* channel_params; } ;
typedef  TYPE_1__ SubStream ;
typedef  TYPE_2__ MLPDecodeContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_3__ FilterParams ;
typedef  TYPE_4__ ChannelParams ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 size_t FIR ; 
 size_t IIR ; 
 int PARAM_FIR ; 
 int PARAM_HUFFOFFSET ; 
 int PARAM_IIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,unsigned int,unsigned int,size_t) ; 

__attribute__((used)) static int FUNC5(MLPDecodeContext *m, unsigned int substr,
                               GetBitContext *gbp, unsigned int ch)
{
    SubStream *s = &m->substream[substr];
    ChannelParams *cp = &s->channel_params[ch];
    FilterParams *fir = &cp->filter_params[FIR];
    FilterParams *iir = &cp->filter_params[IIR];
    int ret;

    if (s->param_presence_flags & PARAM_FIR)
        if (FUNC2(gbp))
            if ((ret = FUNC4(m, gbp, substr, ch, FIR)) < 0)
                return ret;

    if (s->param_presence_flags & PARAM_IIR)
        if (FUNC2(gbp))
            if ((ret = FUNC4(m, gbp, substr, ch, IIR)) < 0)
                return ret;

    if (fir->order + iir->order > 8) {
        FUNC0(m->avctx, AV_LOG_ERROR, "Total filter orders too high.\n");
        return AVERROR_INVALIDDATA;
    }

    if (fir->order && iir->order &&
        fir->shift != iir->shift) {
        FUNC0(m->avctx, AV_LOG_ERROR,
                "FIR and IIR filters must use the same precision.\n");
        return AVERROR_INVALIDDATA;
    }
    /* The FIR and IIR filters must have the same precision.
     * To simplify the filtering code, only the precision of the
     * FIR filter is considered. If only the IIR filter is employed,
     * the FIR filter precision is set to that of the IIR filter, so
     * that the filtering code can use it. */
    if (!fir->order && iir->order)
        fir->shift = iir->shift;

    if (s->param_presence_flags & PARAM_HUFFOFFSET)
        if (FUNC2(gbp))
            cp->huff_offset = FUNC3(gbp, 15);

    cp->codebook  = FUNC1(gbp, 2);
    cp->huff_lsbs = FUNC1(gbp, 5);

    if (cp->huff_lsbs > 24) {
        FUNC0(m->avctx, AV_LOG_ERROR, "Invalid huff_lsbs.\n");
        cp->huff_lsbs = 0;
        return AVERROR_INVALIDDATA;
    }

    return 0;
}