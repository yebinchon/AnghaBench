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
struct TYPE_7__ {int (* apply_unsharp ) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ UnsharpContext ;
struct TYPE_9__ {TYPE_2__** outputs; TYPE_1__* priv; } ;
struct TYPE_8__ {TYPE_3__* dst; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(AVFilterLink *link, AVFrame *in)
{
    UnsharpContext *s = link->dst->priv;
    AVFilterLink *outlink   = link->dst->outputs[0];
    AVFrame *out;
    int ret = 0;

    out = FUNC4(outlink, outlink->w, outlink->h);
    if (!out) {
        FUNC2(&in);
        return FUNC0(ENOMEM);
    }
    FUNC1(out, in);

    ret = s->apply_unsharp(link->dst, in, out);

    FUNC2(&in);

    if (ret < 0) {
        FUNC2(&out);
        return ret;
    }
    return FUNC3(outlink, out);
}