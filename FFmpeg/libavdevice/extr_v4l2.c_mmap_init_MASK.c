#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct video_data {int buffers; scalar_t__* buf_len; scalar_t__ frame_size; int /*<<< orphan*/ * buf_start; int /*<<< orphan*/  fd; } ;
struct TYPE_5__ {int /*<<< orphan*/  offset; } ;
struct v4l2_requestbuffers {int count; int index; scalar_t__ length; TYPE_1__ m; int /*<<< orphan*/  memory; int /*<<< orphan*/  type; } ;
struct v4l2_buffer {int count; int index; scalar_t__ length; TYPE_1__ m; int /*<<< orphan*/  memory; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {struct video_data* priv_data; } ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_MEMORY_MMAP ; 
 int /*<<< orphan*/  VIDIOC_QUERYBUF ; 
 int /*<<< orphan*/  VIDIOC_REQBUFS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC4 (int,int) ; 
 int desired_video_buffers ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_requestbuffers*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *ctx)
{
    int i, res;
    struct video_data *s = ctx->priv_data;
    struct v4l2_requestbuffers req = {
        .type   = V4L2_BUF_TYPE_VIDEO_CAPTURE,
        .count  = desired_video_buffers,
        .memory = V4L2_MEMORY_MMAP
    };

    if (FUNC5(s->fd, VIDIOC_REQBUFS, &req) < 0) {
        res = FUNC0(errno);
        FUNC3(ctx, AV_LOG_ERROR, "ioctl(VIDIOC_REQBUFS): %s\n", FUNC1(res));
        return res;
    }

    if (req.count < 2) {
        FUNC3(ctx, AV_LOG_ERROR, "Insufficient buffer memory\n");
        return FUNC0(ENOMEM);
    }
    s->buffers = req.count;
    s->buf_start = FUNC4(s->buffers, sizeof(void *));
    if (!s->buf_start) {
        FUNC3(ctx, AV_LOG_ERROR, "Cannot allocate buffer pointers\n");
        return FUNC0(ENOMEM);
    }
    s->buf_len = FUNC4(s->buffers, sizeof(unsigned int));
    if (!s->buf_len) {
        FUNC3(ctx, AV_LOG_ERROR, "Cannot allocate buffer sizes\n");
        FUNC2(&s->buf_start);
        return FUNC0(ENOMEM);
    }

    for (i = 0; i < req.count; i++) {
        struct v4l2_buffer buf = {
            .type   = V4L2_BUF_TYPE_VIDEO_CAPTURE,
            .index  = i,
            .memory = V4L2_MEMORY_MMAP
        };
        if (FUNC5(s->fd, VIDIOC_QUERYBUF, &buf) < 0) {
            res = FUNC0(errno);
            FUNC3(ctx, AV_LOG_ERROR, "ioctl(VIDIOC_QUERYBUF): %s\n", FUNC1(res));
            return res;
        }

        s->buf_len[i] = buf.length;
        if (s->frame_size > 0 && s->buf_len[i] < s->frame_size) {
            FUNC3(ctx, AV_LOG_ERROR,
                   "buf_len[%d] = %d < expected frame size %d\n",
                   i, s->buf_len[i], s->frame_size);
            return FUNC0(ENOMEM);
        }
        s->buf_start[i] = FUNC6(NULL, buf.length,
                               PROT_READ | PROT_WRITE, MAP_SHARED,
                               s->fd, buf.m.offset);

        if (s->buf_start[i] == MAP_FAILED) {
            res = FUNC0(errno);
            FUNC3(ctx, AV_LOG_ERROR, "mmap: %s\n", FUNC1(res));
            return res;
        }
    }

    return 0;
}