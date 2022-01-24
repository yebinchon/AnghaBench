#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int nb_inputs; int /*<<< orphan*/  bps; } ;
struct TYPE_16__ {int /*<<< orphan*/  str; } ;
struct TYPE_15__ {TYPE_2__** outputs; TYPE_1__** inputs; TYPE_6__* priv; } ;
struct TYPE_14__ {scalar_t__ sample_rate; int /*<<< orphan*/  time_base; TYPE_4__* src; } ;
struct TYPE_13__ {int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  format; } ;
struct TYPE_12__ {scalar_t__ sample_rate; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  time_base; } ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;
typedef  TYPE_5__ AVBPrint ;
typedef  TYPE_6__ AMergeContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_AUTOMATIC ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,char*,scalar_t__,...) ; 

__attribute__((used)) static int FUNC6(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AMergeContext *s = ctx->priv;
    AVBPrint bp;
    int i;

    for (i = 1; i < s->nb_inputs; i++) {
        if (ctx->inputs[i]->sample_rate != ctx->inputs[0]->sample_rate) {
            FUNC5(ctx, AV_LOG_ERROR,
                   "Inputs must have the same sample rate "
                   "%d for in%d vs %d\n",
                   ctx->inputs[i]->sample_rate, i, ctx->inputs[0]->sample_rate);
            return FUNC0(EINVAL);
        }
    }
    s->bps = FUNC4(ctx->outputs[0]->format);
    outlink->sample_rate = ctx->inputs[0]->sample_rate;
    outlink->time_base   = ctx->inputs[0]->time_base;

    FUNC2(&bp, 0, AV_BPRINT_SIZE_AUTOMATIC);
    for (i = 0; i < s->nb_inputs; i++) {
        FUNC3(&bp, "%sin%d:", i ? " + " : "", i);
        FUNC1(&bp, -1, ctx->inputs[i]->channel_layout);
    }
    FUNC3(&bp, " -> out:");
    FUNC1(&bp, -1, ctx->outputs[0]->channel_layout);
    FUNC5(ctx, AV_LOG_VERBOSE, "%s\n", bp.str);

    return 0;
}