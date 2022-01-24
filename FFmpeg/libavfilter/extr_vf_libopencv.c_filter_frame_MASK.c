#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_2__** outputs; TYPE_1__* priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  format; int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_3__* dst; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* end_frame_filter ) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ OCVContext ;
typedef  int /*<<< orphan*/  IplImage ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    OCVContext *s = ctx->priv;
    AVFilterLink *outlink= inlink->dst->outputs[0];
    AVFrame *out;
    IplImage inimg, outimg;

    out = FUNC4(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC2(&in);
        return FUNC0(ENOMEM);
    }
    FUNC1(out, in);

    FUNC6(&inimg , in , inlink->format);
    FUNC6(&outimg, out, inlink->format);
    s->end_frame_filter(ctx, &inimg, &outimg);
    FUNC5(out, &outimg, inlink->format);

    FUNC2(&in);

    return FUNC3(outlink, out);
}