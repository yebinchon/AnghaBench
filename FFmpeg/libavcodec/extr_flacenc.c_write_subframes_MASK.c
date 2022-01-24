#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_8__ {size_t blocksize; TYPE_4__* subframes; } ;
struct TYPE_7__ {int lpc_coeff_precision; } ;
struct TYPE_11__ {int channels; int /*<<< orphan*/  pb; TYPE_2__ frame; TYPE_1__ options; } ;
struct TYPE_9__ {int coding_mode; int porder; int* params; } ;
struct TYPE_10__ {int type_code; int wasted; scalar_t__ type; int obits; int order; TYPE_3__ rc; int /*<<< orphan*/ * residual; int /*<<< orphan*/ * coefs; int /*<<< orphan*/  shift; } ;
typedef  TYPE_4__ FlacSubframe ;
typedef  TYPE_5__ FlacEncodeContext ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FLAC_SUBFRAME_CONSTANT ; 
 scalar_t__ FLAC_SUBFRAME_LPC ; 
 scalar_t__ FLAC_SUBFRAME_VERBATIM ; 
 int /*<<< orphan*/  INT32_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(FlacEncodeContext *s)
{
    int ch;

    for (ch = 0; ch < s->channels; ch++) {
        FlacSubframe *sub = &s->frame.subframes[ch];
        int i, p, porder, psize;
        int32_t *part_end;
        int32_t *res       =  sub->residual;
        int32_t *frame_end = &sub->residual[s->frame.blocksize];

        /* subframe header */
        FUNC1(&s->pb, 1, 0);
        FUNC1(&s->pb, 6, sub->type_code);
        FUNC1(&s->pb, 1, !!sub->wasted);
        if (sub->wasted)
            FUNC1(&s->pb, sub->wasted, 1);

        /* subframe */
        if (sub->type == FLAC_SUBFRAME_CONSTANT) {
            FUNC2(&s->pb, sub->obits, res[0]);
        } else if (sub->type == FLAC_SUBFRAME_VERBATIM) {
            while (res < frame_end)
                FUNC2(&s->pb, sub->obits, *res++);
        } else {
            /* warm-up samples */
            for (i = 0; i < sub->order; i++)
                FUNC2(&s->pb, sub->obits, *res++);

            /* LPC coefficients */
            if (sub->type == FLAC_SUBFRAME_LPC) {
                int cbits = s->options.lpc_coeff_precision;
                FUNC1( &s->pb, 4, cbits-1);
                FUNC2(&s->pb, 5, sub->shift);
                for (i = 0; i < sub->order; i++)
                    FUNC2(&s->pb, cbits, sub->coefs[i]);
            }

            /* rice-encoded block */
            FUNC1(&s->pb, 2, sub->rc.coding_mode - 4);

            /* partition order */
            porder  = sub->rc.porder;
            psize   = s->frame.blocksize >> porder;
            FUNC1(&s->pb, 4, porder);

            /* residual */
            part_end  = &sub->residual[psize];
            for (p = 0; p < 1 << porder; p++) {
                int k = sub->rc.params[p];
                FUNC1(&s->pb, sub->rc.coding_mode, k);
                while (res < part_end)
                    FUNC3(&s->pb, *res++, k, INT32_MAX, 0);
                part_end = FUNC0(frame_end, part_end + psize);
            }
        }
    }
}