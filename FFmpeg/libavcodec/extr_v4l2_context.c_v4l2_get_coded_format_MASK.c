#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct v4l2_fmtdesc {scalar_t__ pixelformat; int /*<<< orphan*/  index; int /*<<< orphan*/  type; } ;
typedef  int /*<<< orphan*/  fdesc ;
struct TYPE_5__ {int /*<<< orphan*/  type; int /*<<< orphan*/  av_codec_id; } ;
typedef  TYPE_1__ V4L2Context ;
struct TYPE_6__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  VIDIOC_ENUM_FMT ; 
 TYPE_3__* FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_fmtdesc*) ; 
 int /*<<< orphan*/  FUNC4 (struct v4l2_fmtdesc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(V4L2Context* ctx, uint32_t *p)
{
    struct v4l2_fmtdesc fdesc;
    uint32_t v4l2_fmt;
    int ret;

    /* translate to a valid v4l2 format */
    v4l2_fmt = FUNC2(ctx->av_codec_id);
    if (!v4l2_fmt)
        return FUNC0(EINVAL);

    /* check if the driver supports this format */
    FUNC4(&fdesc, 0, sizeof(fdesc));
    fdesc.type = ctx->type;

    for (;;) {
        ret = FUNC3(FUNC1(ctx)->fd, VIDIOC_ENUM_FMT, &fdesc);
        if (ret)
            return FUNC0(EINVAL);

        if (fdesc.pixelformat == v4l2_fmt)
            break;

        fdesc.index++;
    }

    *p = v4l2_fmt;

    return 0;
}