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
struct TYPE_23__ {TYPE_1__* internal; TYPE_5__** outputs; } ;
struct TYPE_22__ {int /*<<< orphan*/  sample_aspect_ratio; int /*<<< orphan*/  time_base; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_21__ {int /*<<< orphan*/  sample_aspect_ratio; int /*<<< orphan*/  pts; } ;
struct TYPE_20__ {TYPE_2__* opaque; TYPE_6__* parent; } ;
struct TYPE_17__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  pts; } ;
struct TYPE_19__ {int nb_inputs; TYPE_12__ fs; TYPE_4__** frames; } ;
struct TYPE_18__ {int /*<<< orphan*/  (* execute ) (TYPE_6__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ StackContext ;
typedef  TYPE_3__ FFFrameSync ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int FUNC5 (TYPE_12__*,int,TYPE_4__**,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  process_slice ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    AVFilterLink *outlink = ctx->outputs[0];
    StackContext *s = fs->opaque;
    AVFrame **in = s->frames;
    AVFrame *out;
    int i, ret;

    for (i = 0; i < s->nb_inputs; i++) {
        if ((ret = FUNC5(&s->fs, i, &in[i], 0)) < 0)
            return ret;
    }

    out = FUNC6(outlink, outlink->w, outlink->h);
    if (!out)
        return FUNC0(ENOMEM);
    out->pts = FUNC2(s->fs.pts, s->fs.time_base, outlink->time_base);
    out->sample_aspect_ratio = outlink->sample_aspect_ratio;

    ctx->internal->execute(ctx, process_slice, out, NULL, FUNC1(s->nb_inputs, FUNC4(ctx)));

    return FUNC3(outlink, out);
}