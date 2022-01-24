#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int status_out; int /*<<< orphan*/  frame_count_out; int /*<<< orphan*/  max_samples; scalar_t__ min_samples; int /*<<< orphan*/  fifo; int /*<<< orphan*/ * dst; } ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_1__ AVFilterLink ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(AVFilterLink *link)
{
    AVFrame *frame = NULL;
    AVFilterContext *dst = link->dst;
    int ret;

    FUNC0(FUNC4(&link->fifo));
    ret = link->min_samples ?
          FUNC6(link, link->min_samples, link->max_samples, &frame) :
          FUNC5(link, &frame);
    FUNC0(ret);
    if (ret < 0) {
        FUNC0(!frame);
        return ret;
    }
    /* The filter will soon have received a new frame, that may allow it to
       produce one or more: unblock its outputs. */
    FUNC7(dst);
    /* AVFilterPad.filter_frame() expect frame_count_out to have the value
       before the frame; ff_filter_frame_framed() will re-increment it. */
    link->frame_count_out--;
    ret = FUNC2(link, frame);
    if (ret < 0 && ret != link->status_out) {
        FUNC1(link, ret, AV_NOPTS_VALUE);
    } else {
        /* Run once again, to see if several frames were available, or if
           the input status has also changed, or any other reason. */
        FUNC3(dst, 300);
    }
    return ret;
}