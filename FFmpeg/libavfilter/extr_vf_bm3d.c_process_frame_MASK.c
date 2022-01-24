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
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_4__** outputs; } ;
struct TYPE_19__ {int /*<<< orphan*/  time_base; } ;
struct TYPE_18__ {int /*<<< orphan*/  pts; } ;
struct TYPE_15__ {int /*<<< orphan*/  time_base; } ;
struct TYPE_17__ {TYPE_11__ fs; } ;
struct TYPE_16__ {TYPE_2__* opaque; TYPE_5__* parent; } ;
typedef  TYPE_1__ FFFrameSync ;
typedef  TYPE_2__ BM3DContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_4__*,TYPE_3__*) ; 
 int FUNC2 (TYPE_11__*,int,TYPE_3__**,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_5__*,TYPE_3__**,TYPE_3__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(FFFrameSync *fs)
{
    AVFilterContext *ctx = fs->parent;
    BM3DContext *s = fs->opaque;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out = NULL, *src, *ref;
    int ret;

    if ((ret = FUNC2(&s->fs, 0, &src, 0)) < 0 ||
        (ret = FUNC2(&s->fs, 1, &ref, 0)) < 0)
        return ret;

    if ((ret = FUNC3(ctx, &out, src, ref)) < 0)
        return ret;

    out->pts = FUNC0(src->pts, s->fs.time_base, outlink->time_base);

    return FUNC1(outlink, out);
}