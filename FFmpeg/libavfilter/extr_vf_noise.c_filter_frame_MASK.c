#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/ * out; int /*<<< orphan*/ * in; } ;
typedef  TYPE_2__ ThreadData ;
struct TYPE_18__ {TYPE_1__* internal; TYPE_3__* priv; TYPE_5__** outputs; } ;
struct TYPE_17__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_6__* dst; } ;
struct TYPE_16__ {int rand_shift_init; int flags; int* rand_shift; int /*<<< orphan*/  lfg; scalar_t__ strength; } ;
struct TYPE_15__ {int /*<<< orphan*/ * height; TYPE_4__* param; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* execute ) (TYPE_6__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ NoiseContext ;
typedef  TYPE_4__ FilterParams ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAX_RES ; 
 int MAX_SHIFT ; 
 int NOISE_TEMPORAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filter_slice ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(AVFilterLink *inlink, AVFrame *inpicref)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    NoiseContext *n = ctx->priv;
    ThreadData td;
    AVFrame *out;
    int comp, i;

    if (FUNC4(inpicref)) {
        out = inpicref;
    } else {
        out = FUNC9(outlink, outlink->w, outlink->h);
        if (!out) {
            FUNC3(&inpicref);
            return FUNC0(ENOMEM);
        }
        FUNC2(out, inpicref);
    }

    for (comp = 0; comp < 4; comp++) {
        FilterParams *fp = &n->param[comp];

        if ((!fp->rand_shift_init || (fp->flags & NOISE_TEMPORAL)) && fp->strength) {

            for (i = 0; i < MAX_RES; i++) {
                fp->rand_shift[i] = FUNC5(&fp->lfg) & (MAX_SHIFT - 1);
            }
            fp->rand_shift_init = 1;
        }
    }

    td.in = inpicref; td.out = out;
    ctx->internal->execute(ctx, filter_slice, &td, NULL, FUNC1(n->height[0], FUNC8(ctx)));
    FUNC6();

    if (inpicref != out)
        FUNC3(&inpicref);
    return FUNC7(outlink, out);
}