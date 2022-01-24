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

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/ * outputs; TYPE_2__* priv; } ;
struct TYPE_16__ {TYPE_5__* dst; } ;
struct TYPE_15__ {int /*<<< orphan*/  metadata; } ;
struct TYPE_14__ {int mipmaps; int last_x; int last_y; float threshold; TYPE_1__* obj_frame; int /*<<< orphan*/ * haystack_frame; int /*<<< orphan*/  ymax; int /*<<< orphan*/  ymin; int /*<<< orphan*/  xmax; int /*<<< orphan*/  xmin; } ;
struct TYPE_13__ {int width; int height; } ;
typedef  TYPE_2__ FOCContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int MAX_MIPMAPS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,char*,int,int,float) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 float FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,float) ; 

__attribute__((used)) static int FUNC10(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    FOCContext *foc = ctx->priv;
    float best_score;
    int best_x, best_y;
    int i;

    foc->haystack_frame[0] = FUNC3(in);
    for (i=1; i<foc->mipmaps; i++) {
        foc->haystack_frame[i] = FUNC7(foc->haystack_frame[i-1]);
    }

    best_score = FUNC9(foc, 0, 0,
                        FUNC0(foc->xmin, foc->last_x - 8),
                        FUNC1(foc->xmax, foc->last_x + 8),
                        FUNC0(foc->ymin, foc->last_y - 8),
                        FUNC1(foc->ymax, foc->last_y + 8),
                        &best_x, &best_y, 1.0);

    best_score = FUNC9(foc, 0, foc->mipmaps - 1, foc->xmin, foc->xmax, foc->ymin, foc->ymax,
                        &best_x, &best_y, best_score);

    for (i=0; i<MAX_MIPMAPS; i++) {
        FUNC4(&foc->haystack_frame[i]);
    }

    if (best_score > foc->threshold) {
        return FUNC8(ctx->outputs[0], in);
    }

    FUNC6(ctx, AV_LOG_DEBUG, "Found at %d %d score %f\n", best_x, best_y, best_score);
    foc->last_x = best_x;
    foc->last_y = best_y;

    FUNC5(in);

    FUNC2(&in->metadata, "lavfi.rect.w", foc->obj_frame->width, 0);
    FUNC2(&in->metadata, "lavfi.rect.h", foc->obj_frame->height, 0);
    FUNC2(&in->metadata, "lavfi.rect.x", best_x, 0);
    FUNC2(&in->metadata, "lavfi.rect.y", best_y, 0);

    return FUNC8(ctx->outputs[0], in);
}