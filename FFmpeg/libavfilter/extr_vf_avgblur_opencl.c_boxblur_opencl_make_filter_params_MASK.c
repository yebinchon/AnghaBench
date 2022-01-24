#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int power; scalar_t__ radius; } ;
struct TYPE_14__ {int power; scalar_t__ radius; } ;
struct TYPE_13__ {int power; scalar_t__ radius; } ;
struct TYPE_12__ {TYPE_1__* priv; } ;
struct TYPE_11__ {TYPE_3__* dst; } ;
struct TYPE_10__ {int* power; scalar_t__* radius; TYPE_7__ alpha_param; TYPE_6__ chroma_param; TYPE_5__ luma_param; } ;
typedef  TYPE_1__ AverageBlurOpenCLContext ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 size_t A ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 size_t U ; 
 size_t V ; 
 size_t Y ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (TYPE_2__*,TYPE_5__*,TYPE_6__*,TYPE_7__*) ; 

__attribute__((used)) static int FUNC2(AVFilterLink *inlink)
{
    AVFilterContext    *ctx = inlink->dst;
    AverageBlurOpenCLContext *s = ctx->priv;
    int err, i;

    err = FUNC1(inlink,
                                        &s->luma_param,
                                        &s->chroma_param,
                                        &s->alpha_param);

    if (err != 0) {
        FUNC0(ctx, AV_LOG_ERROR, "Failed to evaluate "
               "filter params: %d.\n", err);
        return err;
    }

    s->radius[Y] = s->luma_param.radius;
    s->radius[U] = s->radius[V] = s->chroma_param.radius;
    s->radius[A] = s->alpha_param.radius;

    s->power[Y] = s->luma_param.power;
    s->power[U] = s->power[V] = s->chroma_param.power;
    s->power[A] = s->alpha_param.power;

    for (i = 0; i < 4; i++) {
        if (s->power[i] == 0) {
            s->power[i] = 1;
            s->radius[i] = 0;
        }
    }

    return 0;
}