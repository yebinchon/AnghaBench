#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_10__ {int /*<<< orphan*/  pts; int /*<<< orphan*/ * data; } ;
struct TYPE_8__ {int /*<<< orphan*/  last_pts; TYPE_4__* frame; } ;
struct TYPE_9__ {int nb_filters; TYPE_1__** filters; TYPE_2__ sub2video; } ;
struct TYPE_7__ {int /*<<< orphan*/  filter; } ;
typedef  TYPE_3__ InputStream ;
typedef  TYPE_4__ AVFrame ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AV_BUFFERSRC_FLAG_KEEP_REF ; 
 int AV_BUFFERSRC_FLAG_PUSH ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(InputStream *ist, int64_t pts)
{
    AVFrame *frame = ist->sub2video.frame;
    int i;
    int ret;

    FUNC0(frame->data[0]);
    ist->sub2video.last_pts = frame->pts = pts;
    for (i = 0; i < ist->nb_filters; i++) {
        ret = FUNC1(ist->filters[i]->filter, frame,
                                           AV_BUFFERSRC_FLAG_KEEP_REF |
                                           AV_BUFFERSRC_FLAG_PUSH);
        if (ret != AVERROR_EOF && ret < 0)
            FUNC3(NULL, AV_LOG_WARNING, "Error while add the frame to buffer source(%s).\n",
                   FUNC2(ret));
    }
}