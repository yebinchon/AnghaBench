#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct v4l2_format_update {int update_avfmt; int update_v4l2; int /*<<< orphan*/  v4l2_fmt; int /*<<< orphan*/  av_fmt; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {scalar_t__ av_codec_id; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ V4L2Context ;
struct TYPE_9__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 scalar_t__ AV_CODEC_ID_RAWVIDEO ; 
 int /*<<< orphan*/  VIDIOC_TRY_FMT ; 
 TYPE_6__* FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct v4l2_format_update*) ; 

int FUNC5(V4L2Context* ctx, int probe)
{
    struct v4l2_format_update fmt = { 0 };
    int ret;

    if  (ctx->av_codec_id == AV_CODEC_ID_RAWVIDEO) {
        ret = FUNC3(ctx, &fmt.av_fmt);
        if (ret)
            return ret;

        fmt.update_avfmt = !probe;
        FUNC4(ctx, &fmt);

        /* format has been tried already */
        return ret;
    }

    ret = FUNC2(ctx, &fmt.v4l2_fmt);
    if (ret)
        return ret;

    fmt.update_v4l2 = 1;
    FUNC4(ctx, &fmt);

    return FUNC1(FUNC0(ctx)->fd, VIDIOC_TRY_FMT, &ctx->format);
}