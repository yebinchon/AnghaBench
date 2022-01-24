#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__** outputs; TYPE_1__* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; TYPE_3__* dst; } ;
struct TYPE_7__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ ShowPaletteContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVFilterLink *inlink, AVFrame *in)
{
    int ret;
    AVFrame *out;
    AVFilterContext *ctx = inlink->dst;
    const ShowPaletteContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];

    out = FUNC5(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC2(&in);
        return FUNC0(ENOMEM);
    }
    FUNC1(out, in);
    ret = FUNC3(out, in, s->size);
    FUNC2(&in);
    return ret < 0 ? ret : FUNC4(outlink, out);
}