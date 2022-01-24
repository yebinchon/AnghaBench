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
struct TYPE_5__ {int /*<<< orphan*/  capture; TYPE_1__* avctx; int /*<<< orphan*/  output; scalar_t__ reinit; scalar_t__ draining; int /*<<< orphan*/  refsync; int /*<<< orphan*/  refcount; int /*<<< orphan*/  devname; } ;
typedef  TYPE_2__ V4L2m2mContext ;
struct TYPE_4__ {int /*<<< orphan*/  codec; } ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  VIDIOC_STREAMOFF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ errno ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(V4L2m2mContext *s)
{
    void *log_ctx = s->avctx;
    int ret;

    FUNC2(log_ctx, AV_LOG_DEBUG, "%s full reinit\n", s->devname);

    /* wait for pending buffer references */
    if (FUNC0(&s->refcount))
        while(FUNC8(&s->refsync) == -1 && errno == EINTR);

    ret = FUNC7(&s->output, VIDIOC_STREAMOFF);
    if (ret) {
        FUNC2(log_ctx, AV_LOG_ERROR, "output VIDIOC_STREAMOFF\n");
        goto error;
    }

    ret = FUNC7(&s->capture, VIDIOC_STREAMOFF);
    if (ret) {
            FUNC2(log_ctx, AV_LOG_ERROR, "capture VIDIOC_STREAMOFF\n");
            goto error;
    }

    /* release and unmmap the buffers */
    FUNC5(&s->output);
    FUNC5(&s->capture);

    /* start again now that we know the stream dimensions */
    s->draining = 0;
    s->reinit = 0;

    ret = FUNC3(&s->output, 0);
    if (ret) {
        FUNC2(log_ctx, AV_LOG_DEBUG, "v4l2 output format not supported\n");
        goto error;
    }

    ret = FUNC3(&s->capture, 0);
    if (ret) {
        FUNC2(log_ctx, AV_LOG_DEBUG, "v4l2 capture format not supported\n");
        goto error;
    }

    ret = FUNC6(&s->output);
    if (ret) {
        FUNC2(log_ctx, AV_LOG_ERROR, "can't set v4l2 output format\n");
        goto error;
    }

    ret = FUNC6(&s->capture);
    if (ret) {
        FUNC2(log_ctx, AV_LOG_ERROR, "can't to set v4l2 capture format\n");
        goto error;
    }

    ret = FUNC4(&s->output);
    if (ret) {
        FUNC2(log_ctx, AV_LOG_ERROR, "no v4l2 output context's buffers\n");
        goto error;
    }

    /* decoder's buffers need to be updated at a later stage */
    if (!s->avctx || !FUNC1(s->avctx->codec)) {
        ret = FUNC4(&s->capture);
        if (ret) {
            FUNC2(log_ctx, AV_LOG_ERROR, "no v4l2 capture context's buffers\n");
            goto error;
        }
    }

    return 0;

error:
    return ret;
}