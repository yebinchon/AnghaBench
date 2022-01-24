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
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int8_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_14__ {int* linesize; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/ ** data; } ;
struct TYPE_13__ {long long start_display_time; long long end_display_time; int num_rects; int /*<<< orphan*/ * rects; scalar_t__ pts; } ;
struct TYPE_11__ {int /*<<< orphan*/  end_pts; TYPE_5__* frame; } ;
struct TYPE_12__ {TYPE_2__ sub2video; int /*<<< orphan*/  dec_ctx; TYPE_1__* st; } ;
struct TYPE_10__ {int /*<<< orphan*/  time_base; } ;
typedef  TYPE_3__ InputStream ;
typedef  TYPE_4__ AVSubtitle ;
typedef  TYPE_5__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 int /*<<< orphan*/  INT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC5(InputStream *ist, AVSubtitle *sub)
{
    AVFrame *frame = ist->sub2video.frame;
    int8_t *dst;
    int     dst_linesize;
    int num_rects, i;
    int64_t pts, end_pts;

    if (!frame)
        return;
    if (sub) {
        pts       = FUNC1(sub->pts + sub->start_display_time * 1000LL,
                                 AV_TIME_BASE_Q, ist->st->time_base);
        end_pts   = FUNC1(sub->pts + sub->end_display_time   * 1000LL,
                                 AV_TIME_BASE_Q, ist->st->time_base);
        num_rects = sub->num_rects;
    } else {
        pts       = ist->sub2video.end_pts;
        end_pts   = INT64_MAX;
        num_rects = 0;
    }
    if (FUNC3(ist) < 0) {
        FUNC0(ist->dec_ctx, AV_LOG_ERROR,
               "Impossible to get a blank canvas.\n");
        return;
    }
    dst          = frame->data    [0];
    dst_linesize = frame->linesize[0];
    for (i = 0; i < num_rects; i++)
        FUNC2(dst, dst_linesize, frame->width, frame->height, sub->rects[i]);
    FUNC4(ist, pts);
    ist->sub2video.end_pts = end_pts;
}