#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_3__* out; TYPE_3__* in; } ;
typedef  TYPE_2__ ThreadData ;
struct TYPE_20__ {TYPE_1__* internal; TYPE_4__** outputs; } ;
struct TYPE_19__ {int /*<<< orphan*/  channels; TYPE_5__* dst; } ;
struct TYPE_18__ {int /*<<< orphan*/  pts; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* execute ) (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FRAME_SIZE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**) ; 
 int FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 TYPE_3__* FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rnnoise_channels ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out = NULL;
    ThreadData td;

    out = FUNC5(outlink, FRAME_SIZE);
    if (!out) {
        FUNC2(&in);
        return FUNC0(ENOMEM);
    }
    out->pts = in->pts;

    td.in = in; td.out = out;
    ctx->internal->execute(ctx, rnnoise_channels, &td, NULL, FUNC1(outlink->channels,
                                                                   FUNC4(ctx)));

    FUNC2(&in);
    return FUNC3(outlink, out);
}