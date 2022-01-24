#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_12__ ;

/* Type definitions */
typedef  scalar_t__ ff_idet_filter_func ;
struct TYPE_23__ {int /*<<< orphan*/ * outputs; TYPE_1__** inputs; TYPE_3__* priv; } ;
struct TYPE_22__ {scalar_t__ w; scalar_t__ h; scalar_t__ format; TYPE_6__* dst; } ;
struct TYPE_21__ {scalar_t__ width; scalar_t__ height; scalar_t__ format; scalar_t__ interlaced_frame; } ;
struct TYPE_20__ {int analyze_interlaced_flag; int analyze_interlaced_flag_done; scalar_t__ interlaced_flag_accuracy; scalar_t__ last_type; TYPE_4__* cur; TYPE_4__* next; scalar_t__ filter_line; TYPE_12__* csp; TYPE_4__* prev; } ;
struct TYPE_19__ {int depth; } ;
struct TYPE_18__ {scalar_t__ format; scalar_t__ w; scalar_t__ h; } ;
struct TYPE_17__ {TYPE_2__* comp; } ;
typedef  TYPE_3__ IDETContext ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 scalar_t__ ARCH_X86 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ PROGRESSIVE ; 
 scalar_t__ UNDETERMINED ; 
 TYPE_4__* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 TYPE_12__* FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ ff_idet_filter_line_c_16bit ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *link, AVFrame *picref)
{
    AVFilterContext *ctx = link->dst;
    IDETContext *idet = ctx->priv;

    // initial frame(s) and not interlaced, just pass through for
    // the analyze_interlaced_flag mode
    if (idet->analyze_interlaced_flag &&
        !picref->interlaced_frame &&
        !idet->next) {
        return FUNC5(ctx->outputs[0], picref);
    }
    if (idet->analyze_interlaced_flag_done) {
        if (picref->interlaced_frame && idet->interlaced_flag_accuracy < 0)
            picref->interlaced_frame = 0;
        return FUNC5(ctx->outputs[0], picref);
    }

    FUNC2(&idet->prev);

    if(   picref->width  != link->w
       || picref->height != link->h
       || picref->format != link->format) {
        link->dst->inputs[0]->format = picref->format;
        link->dst->inputs[0]->w      = picref->width;
        link->dst->inputs[0]->h      = picref->height;

        FUNC2(&idet->cur );
        FUNC2(&idet->next);
    }

    idet->prev = idet->cur;
    idet->cur  = idet->next;
    idet->next = picref;

    if (!idet->cur &&
        !(idet->cur = FUNC1(idet->next)))
        return FUNC0(ENOMEM);

    if (!idet->prev)
        return 0;

    if (!idet->csp)
        idet->csp = FUNC4(link->format);
    if (idet->csp->comp[0].depth > 8){
        idet->filter_line = (ff_idet_filter_func)ff_idet_filter_line_c_16bit;
        if (ARCH_X86)
            FUNC6(idet, 1);
    }

    if (idet->analyze_interlaced_flag) {
        if (idet->cur->interlaced_frame) {
            idet->cur->interlaced_frame = 0;
            FUNC7(ctx);
            if (idet->last_type == PROGRESSIVE) {
                idet->interlaced_flag_accuracy --;
                idet->analyze_interlaced_flag --;
            } else if (idet->last_type != UNDETERMINED) {
                idet->interlaced_flag_accuracy ++;
                idet->analyze_interlaced_flag --;
            }
            if (idet->analyze_interlaced_flag == 1) {
                FUNC5(ctx->outputs[0], FUNC1(idet->cur));

                if (idet->next->interlaced_frame && idet->interlaced_flag_accuracy < 0)
                    idet->next->interlaced_frame = 0;
                idet->analyze_interlaced_flag_done = 1;
                FUNC3(ctx, AV_LOG_INFO, "Final flag accuracy %d\n", idet->interlaced_flag_accuracy);
                return FUNC5(ctx->outputs[0], FUNC1(idet->next));
            }
        }
    } else {
        FUNC7(ctx);
    }

    return FUNC5(ctx->outputs[0], FUNC1(idet->cur));
}