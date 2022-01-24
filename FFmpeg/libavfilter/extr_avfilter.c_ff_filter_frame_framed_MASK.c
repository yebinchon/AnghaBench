#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int is_disabled; TYPE_1__* filter; } ;
struct TYPE_13__ {int (* filter_frame ) (TYPE_2__*,int /*<<< orphan*/ *) ;scalar_t__ needs_writable; } ;
struct TYPE_12__ {int /*<<< orphan*/  frame_count_out; TYPE_3__* dstpad; TYPE_5__* dst; } ;
struct TYPE_11__ {int flags; } ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_3__ AVFilterPad ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int AVFILTER_FLAG_SUPPORT_TIMELINE_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVFilterLink *link, AVFrame *frame)
{
    int (*filter_frame)(AVFilterLink *, AVFrame *);
    AVFilterContext *dstctx = link->dst;
    AVFilterPad *dst = link->dstpad;
    int ret;

    if (!(filter_frame = dst->filter_frame))
        filter_frame = default_filter_frame;

    if (dst->needs_writable) {
        ret = FUNC3(link, &frame);
        if (ret < 0)
            goto fail;
    }

    FUNC4(link, frame);
    dstctx->is_disabled = !FUNC2(link, frame);

    if (dstctx->is_disabled &&
        (dstctx->filter->flags & AVFILTER_FLAG_SUPPORT_TIMELINE_GENERIC))
        filter_frame = default_filter_frame;
    ret = filter_frame(link, frame);
    link->frame_count_out++;
    return ret;

fail:
    FUNC0(&frame);
    return ret;
}