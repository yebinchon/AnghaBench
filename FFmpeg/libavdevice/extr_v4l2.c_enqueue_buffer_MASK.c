#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct video_data {int /*<<< orphan*/  buffers_queued; int /*<<< orphan*/  fd; } ;
struct v4l2_buffer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  VIDIOC_QBUF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_buffer*) ; 

__attribute__((used)) static int FUNC5(struct video_data *s, struct v4l2_buffer *buf)
{
    int res = 0;

    if (FUNC4(s->fd, VIDIOC_QBUF, buf) < 0) {
        res = FUNC0(errno);
        FUNC3(NULL, AV_LOG_ERROR, "ioctl(VIDIOC_QBUF): %s\n", FUNC2(res));
    } else {
        FUNC1(&s->buffers_queued, 1);
    }

    return res;
}