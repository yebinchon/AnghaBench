#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_capability {int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
typedef  int /*<<< orphan*/  cap ;
struct TYPE_6__ {char* name; int /*<<< orphan*/  type; scalar_t__ done; } ;
struct TYPE_5__ {char* name; int /*<<< orphan*/  type; scalar_t__ done; } ;
struct TYPE_7__ {TYPE_2__ output; TYPE_1__ capture; int /*<<< orphan*/  fd; int /*<<< orphan*/  refsync; int /*<<< orphan*/  refcount; void* priv; } ;
typedef  TYPE_3__ V4L2m2mContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ; 
 int /*<<< orphan*/  VIDIOC_QUERYCAP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_capability*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_capability*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct v4l2_capability*) ; 
 scalar_t__ FUNC7 (struct v4l2_capability*) ; 

__attribute__((used)) static int FUNC8(V4L2m2mContext* s, int probe)
{
    struct v4l2_capability cap;
    void *log_ctx = s->priv;
    int ret;

    s->capture.done = s->output.done = 0;
    s->capture.name = "capture";
    s->output.name = "output";
    FUNC1(&s->refcount, 0);
    FUNC5(&s->refsync, 0, 0);

    FUNC4(&cap, 0, sizeof(cap));
    ret = FUNC3(s->fd, VIDIOC_QUERYCAP, &cap);
    if (ret < 0)
        return ret;

    FUNC2(log_ctx, probe ? AV_LOG_DEBUG : AV_LOG_INFO,
                     "driver '%s' on card '%s' in %s mode\n", cap.driver, cap.card,
                     FUNC6(&cap) ? "mplane" :
                     FUNC7(&cap) ? "splane" : "unknown");

    if (FUNC6(&cap)) {
        s->capture.type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
        s->output.type = V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
        return 0;
    }

    if (FUNC7(&cap)) {
        s->capture.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
        s->output.type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
        return 0;
    }

    return FUNC0(EINVAL);
}