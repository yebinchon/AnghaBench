#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct v4l2_format {scalar_t__ type; int /*<<< orphan*/  member_0; } ;
struct v4l2_event {scalar_t__ type; int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {void* height; void* width; void* sample_aspect_ratio; int /*<<< orphan*/  name; struct v4l2_format format; } ;
struct TYPE_11__ {int reinit; TYPE_3__ capture; scalar_t__ avctx; TYPE_3__ output; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ V4L2m2mContext ;
struct TYPE_12__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ V4L2Context ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int EINVAL ; 
 scalar_t__ V4L2_EVENT_SOURCE_CHANGE ; 
 int /*<<< orphan*/  VIDIOC_DQEVENT ; 
 int /*<<< orphan*/  VIDIOC_G_FMT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_1__* FUNC1 (TYPE_2__*) ; 
 int FUNC2 (scalar_t__,void*,void*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_format*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 void* FUNC7 (struct v4l2_format*) ; 
 void* FUNC8 (TYPE_3__*) ; 
 void* FUNC9 (struct v4l2_format*) ; 
 int FUNC10 (TYPE_3__*,struct v4l2_format*) ; 

__attribute__((used)) static int FUNC11(V4L2Context *ctx)
{
    V4L2m2mContext *s = FUNC1(ctx);
    struct v4l2_format cap_fmt = s->capture.format;
    struct v4l2_format out_fmt = s->output.format;
    struct v4l2_event evt = { 0 };
    int full_reinit, reinit, ret;

    ret = FUNC5(s->fd, VIDIOC_DQEVENT, &evt);
    if (ret < 0) {
        FUNC0(FUNC6(ctx), AV_LOG_ERROR, "%s VIDIOC_DQEVENT\n", ctx->name);
        return 0;
    }

    if (evt.type != V4L2_EVENT_SOURCE_CHANGE)
        return 0;

    ret = FUNC5(s->fd, VIDIOC_G_FMT, &out_fmt);
    if (ret) {
        FUNC0(FUNC6(ctx), AV_LOG_ERROR, "%s VIDIOC_G_FMT\n", s->output.name);
        return 0;
    }

    ret = FUNC5(s->fd, VIDIOC_G_FMT, &cap_fmt);
    if (ret) {
        FUNC0(FUNC6(ctx), AV_LOG_ERROR, "%s VIDIOC_G_FMT\n", s->capture.name);
        return 0;
    }

    full_reinit = FUNC10(&s->output, &out_fmt);
    if (full_reinit) {
        s->output.height = FUNC7(&out_fmt);
        s->output.width = FUNC9(&out_fmt);
        s->output.sample_aspect_ratio = FUNC8(&s->output);
    }

    reinit = FUNC10(&s->capture, &cap_fmt);
    if (reinit) {
        s->capture.height = FUNC7(&cap_fmt);
        s->capture.width = FUNC9(&cap_fmt);
        s->capture.sample_aspect_ratio = FUNC8(&s->capture);
    }

    if (full_reinit || reinit)
        s->reinit = 1;

    if (full_reinit) {
        ret = FUNC3(s);
        if (ret) {
            FUNC0(FUNC6(ctx), AV_LOG_ERROR, "v4l2_m2m_codec_full_reinit\n");
            return -EINVAL;
        }
        goto reinit_run;
    }

    if (reinit) {
        if (s->avctx)
            ret = FUNC2(s->avctx, s->capture.width, s->capture.height);
        if (ret < 0)
            FUNC0(FUNC6(ctx), AV_LOG_WARNING, "update avcodec height and width\n");

        ret = FUNC4(s);
        if (ret) {
            FUNC0(FUNC6(ctx), AV_LOG_ERROR, "v4l2_m2m_codec_reinit\n");
            return -EINVAL;
        }
        goto reinit_run;
    }

    /* dummy event received */
    return 0;

    /* reinit executed */
reinit_run:
    return 1;
}