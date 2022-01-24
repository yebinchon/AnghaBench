#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ ** inputs; TYPE_1__* priv; } ;
struct TYPE_4__ {int eof; int /*<<< orphan*/ * got_frame; } ;
typedef  TYPE_1__ DecimateContext ;
typedef  int /*<<< orphan*/  AVFilterLink ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(AVFilterContext *ctx, int lid)
{
    int ret = 0;
    DecimateContext *dm = ctx->priv;

    if (!dm->got_frame[lid]) {
        AVFilterLink *inlink = ctx->inputs[lid];
        ret = FUNC0(inlink);
        if (ret == AVERROR_EOF) { // flushing
            dm->eof |= 1 << lid;
            ret = FUNC1(inlink, NULL);
        }
    }
    return ret;
}