#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_8__ {void* pixelformat; } ;
struct TYPE_10__ {void* pixelformat; } ;
struct TYPE_9__ {TYPE_1__ pix; TYPE_3__ pix_mp; } ;
struct v4l2_format {int /*<<< orphan*/  type; TYPE_2__ fmt; } ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_11__ {int /*<<< orphan*/  type; struct v4l2_format format; } ;
typedef  TYPE_4__ V4L2Context ;
struct TYPE_12__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIDIOC_TRY_FMT ; 
 TYPE_6__* FUNC2 (TYPE_4__*) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_format*) ; 

__attribute__((used)) static inline int FUNC5(V4L2Context* ctx, enum AVPixelFormat pixfmt)
{
    struct v4l2_format *fmt = &ctx->format;
    uint32_t v4l2_fmt;
    int ret;

    v4l2_fmt = FUNC3(pixfmt);
    if (!v4l2_fmt)
        return FUNC0(EINVAL);

    if (FUNC1(ctx->type))
        fmt->fmt.pix_mp.pixelformat = v4l2_fmt;
    else
        fmt->fmt.pix.pixelformat = v4l2_fmt;

    fmt->type = ctx->type;

    ret = FUNC4(FUNC2(ctx)->fd, VIDIOC_TRY_FMT, fmt);
    if (ret)
        return FUNC0(EINVAL);

    return 0;
}