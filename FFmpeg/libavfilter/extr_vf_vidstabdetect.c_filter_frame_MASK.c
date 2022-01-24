#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int planes; } ;
struct TYPE_21__ {TYPE_2__ fi; } ;
typedef  TYPE_3__ VSMotionDetect ;
struct TYPE_22__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
typedef  TYPE_4__ VSFrame ;
struct TYPE_26__ {TYPE_7__** outputs; TYPE_5__* priv; } ;
struct TYPE_25__ {TYPE_8__* dst; } ;
struct TYPE_24__ {int /*<<< orphan*/ * linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_19__ {scalar_t__ show; } ;
struct TYPE_23__ {int /*<<< orphan*/  f; TYPE_1__ conf; TYPE_3__ md; } ;
typedef  TYPE_5__ StabData ;
typedef  int /*<<< orphan*/  LocalMotions ;
typedef  TYPE_6__ AVFrame ;
typedef  TYPE_7__ AVFilterLink ;
typedef  TYPE_8__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ VS_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 (TYPE_7__*,TYPE_6__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    StabData *s = ctx->priv;
    VSMotionDetect *md = &(s->md);
    LocalMotions localmotions;

    AVFilterLink *outlink = inlink->dst->outputs[0];
    VSFrame frame;
    int plane;

    if (s->conf.show > 0 && !FUNC1(in))
        FUNC2(in);

    for (plane = 0; plane < md->fi.planes; plane++) {
        frame.data[plane] = in->data[plane];
        frame.linesize[plane] = in->linesize[plane];
    }
    if (FUNC5(md, &localmotions, &frame) != VS_OK) {
        FUNC3(ctx, AV_LOG_ERROR, "motion detection failed");
        return FUNC0(AVERROR_EXTERNAL);
    } else {
        if (FUNC6(md, s->f, &localmotions) != VS_OK) {
            int ret = FUNC0(errno);
            FUNC3(ctx, AV_LOG_ERROR, "cannot write to transform file");
            return ret;
        }
        FUNC7(&localmotions);
    }

    return FUNC4(outlink, in);
}