#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ is_disabled; int /*<<< orphan*/ * priv; TYPE_1__** outputs; } ;
struct TYPE_6__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_2__* dst; } ;
typedef  int /*<<< orphan*/  NormalizeContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_1__ AVFilterLink ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    AVFilterLink *outlink = ctx->outputs[0];
    NormalizeContext *s = ctx->priv;
    AVFrame *out;
    // Set 'direct' if we can modify the input frame in-place.  Otherwise we
    // need to retrieve a new frame from the output link.
    int direct = FUNC3(in) && !ctx->is_disabled;

    if (direct) {
        out = in;
    } else {
        out = FUNC5(outlink, outlink->w, outlink->h);
        if (!out) {
            FUNC2(&in);
            return FUNC0(ENOMEM);
        }
        FUNC1(out, in);
    }

    // Now we've got the input and output frames (which may be the same frame)
    // perform the filtering with our custom function.
    FUNC6(s, in, out);

    if (ctx->is_disabled) {
        FUNC2(&out);
        return FUNC4(outlink, in);
    }

    if (!direct)
        FUNC2(&in);

    return FUNC4(outlink, out);
}