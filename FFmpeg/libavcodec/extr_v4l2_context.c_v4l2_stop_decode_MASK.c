#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct v4l2_decoder_cmd {int /*<<< orphan*/  flags; int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  V4L2Context ;
struct TYPE_2__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ ENOTTY ; 
 int /*<<< orphan*/  V4L2_DEC_CMD_STOP ; 
 int /*<<< orphan*/  VIDIOC_DECODER_CMD ; 
 int /*<<< orphan*/  VIDIOC_STREAMOFF ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_decoder_cmd*) ; 

__attribute__((used)) static int FUNC4(V4L2Context *ctx)
{
    struct v4l2_decoder_cmd cmd = {
        .cmd = V4L2_DEC_CMD_STOP,
        .flags = 0,
    };
    int ret;

    ret = FUNC3(FUNC1(ctx)->fd, VIDIOC_DECODER_CMD, &cmd);
    if (ret) {
        /* DECODER_CMD is optional */
        if (errno == ENOTTY)
            return FUNC2(ctx, VIDIOC_STREAMOFF);
        else
            return FUNC0(errno);
    }

    return 0;
}