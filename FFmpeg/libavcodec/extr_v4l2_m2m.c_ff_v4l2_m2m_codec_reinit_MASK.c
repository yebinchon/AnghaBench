#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ reinit; scalar_t__ draining; int /*<<< orphan*/  capture; int /*<<< orphan*/  refsync; int /*<<< orphan*/  refcount; void* priv; } ;
typedef  TYPE_1__ V4L2m2mContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  VIDIOC_STREAMOFF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(V4L2m2mContext* s)
{
    void *log_ctx = s->priv;
    int ret;

    FUNC1(log_ctx, AV_LOG_DEBUG, "reinit context\n");

    /* 1. streamoff */
    ret = FUNC5(&s->capture, VIDIOC_STREAMOFF);
    if (ret)
        FUNC1(log_ctx, AV_LOG_ERROR, "capture VIDIOC_STREAMOFF\n");

    /* 2. unmap the capture buffers (v4l2 and ffmpeg):
     *    we must wait for all references to be released before being allowed
     *    to queue new buffers.
     */
    FUNC1(log_ctx, AV_LOG_DEBUG, "waiting for user to release AVBufferRefs\n");
    if (FUNC0(&s->refcount))
        while(FUNC6(&s->refsync) == -1 && errno == EINTR);

    FUNC3(&s->capture);

    /* 3. get the new capture format */
    ret = FUNC2(&s->capture, 0);
    if (ret) {
        FUNC1(log_ctx, AV_LOG_ERROR, "query the new capture format\n");
        return ret;
    }

    /* 4. set the capture format */
    ret = FUNC4(&s->capture);
    if (ret) {
        FUNC1(log_ctx, AV_LOG_ERROR, "setting capture format\n");
        return ret;
    }

    /* 5. complete reinit */
    s->draining = 0;
    s->reinit = 0;

    return 0;
}