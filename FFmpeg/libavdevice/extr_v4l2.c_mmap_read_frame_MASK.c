#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct video_data {int buffers; scalar_t__ frame_size; int /*<<< orphan*/ * buf_start; int /*<<< orphan*/  buffers_queued; int /*<<< orphan*/  fd; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct v4l2_buffer {int index; int flags; scalar_t__ bytesused; struct timeval timestamp; int /*<<< orphan*/  memory; int /*<<< orphan*/  type; } ;
struct buff_data {size_t index; struct video_data* s; } ;
struct TYPE_10__ {scalar_t__ video_codec_id; struct video_data* priv_data; } ;
struct TYPE_9__ {scalar_t__ size; scalar_t__ pts; int /*<<< orphan*/  buf; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ AV_CODEC_ID_CPIA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ EAGAIN ; 
 scalar_t__ EINTR ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOMEM ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int V4L2_BUF_FLAG_ERROR ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_MEMORY_MMAP ; 
 int /*<<< orphan*/  VIDIOC_DQBUF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct buff_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct buff_data**) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 struct buff_data* FUNC10 (int) ; 
 int FUNC11 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,scalar_t__*) ; 
 int FUNC14 (struct video_data*,struct v4l2_buffer*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  mmap_release_buffer ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_buffer*) ; 

__attribute__((used)) static int FUNC17(AVFormatContext *ctx, AVPacket *pkt)
{
    struct video_data *s = ctx->priv_data;
    struct v4l2_buffer buf = {
        .type   = V4L2_BUF_TYPE_VIDEO_CAPTURE,
        .memory = V4L2_MEMORY_MMAP
    };
    struct timeval buf_ts;
    int res;

    pkt->size = 0;

    /* FIXME: Some special treatment might be needed in case of loss of signal... */
    while ((res = FUNC16(s->fd, VIDIOC_DQBUF, &buf)) < 0 && (errno == EINTR));
    if (res < 0) {
        if (errno == EAGAIN)
            return FUNC0(EAGAIN);

        res = FUNC0(errno);
        FUNC9(ctx, AV_LOG_ERROR, "ioctl(VIDIOC_DQBUF): %s\n",
               FUNC7(res));
        return res;
    }

    buf_ts = buf.timestamp;

    if (buf.index >= s->buffers) {
        FUNC9(ctx, AV_LOG_ERROR, "Invalid buffer index received.\n");
        return FUNC0(EINVAL);
    }
    FUNC3(&s->buffers_queued, -1);
    // always keep at least one buffer queued
    FUNC5(FUNC4(&s->buffers_queued) >= 1);

#ifdef V4L2_BUF_FLAG_ERROR
    if (buf.flags & V4L2_BUF_FLAG_ERROR) {
        av_log(ctx, AV_LOG_WARNING,
               "Dequeued v4l2 buffer contains corrupted data (%d bytes).\n",
               buf.bytesused);
        buf.bytesused = 0;
    } else
#endif
    {
        /* CPIA is a compressed format and we don't know the exact number of bytes
         * used by a frame, so set it here as the driver announces it. */
        if (ctx->video_codec_id == AV_CODEC_ID_CPIA)
            s->frame_size = buf.bytesused;

        if (s->frame_size > 0 && buf.bytesused != s->frame_size) {
            FUNC9(ctx, AV_LOG_WARNING,
                   "Dequeued v4l2 buffer contains %d bytes, but %d were expected. Flags: 0x%08X.\n",
                   buf.bytesused, s->frame_size, buf.flags);
            buf.bytesused = 0;
        }
    }

    /* Image is at s->buff_start[buf.index] */
    if (FUNC4(&s->buffers_queued) == FUNC1(s->buffers / 8, 1)) {
        /* when we start getting low on queued buffers, fall back on copying data */
        res = FUNC11(pkt, buf.bytesused);
        if (res < 0) {
            FUNC9(ctx, AV_LOG_ERROR, "Error allocating a packet.\n");
            FUNC14(s, &buf);
            return res;
        }
        FUNC15(pkt->data, s->buf_start[buf.index], buf.bytesused);

        res = FUNC14(s, &buf);
        if (res) {
            FUNC12(pkt);
            return res;
        }
    } else {
        struct buff_data *buf_descriptor;

        pkt->data     = s->buf_start[buf.index];
        pkt->size     = buf.bytesused;

        buf_descriptor = FUNC10(sizeof(struct buff_data));
        if (!buf_descriptor) {
            /* Something went wrong... Since av_malloc() failed, we cannot even
             * allocate a buffer for memcpying into it
             */
            FUNC9(ctx, AV_LOG_ERROR, "Failed to allocate a buffer descriptor\n");
            FUNC14(s, &buf);

            return FUNC0(ENOMEM);
        }
        buf_descriptor->index = buf.index;
        buf_descriptor->s     = s;

        pkt->buf = FUNC6(pkt->data, pkt->size, mmap_release_buffer,
                                    buf_descriptor, 0);
        if (!pkt->buf) {
            FUNC9(ctx, AV_LOG_ERROR, "Failed to create a buffer\n");
            FUNC14(s, &buf);
            FUNC8(&buf_descriptor);
            return FUNC0(ENOMEM);
        }
    }
    pkt->pts = buf_ts.tv_sec * FUNC2(1000000) + buf_ts.tv_usec;
    FUNC13(ctx, &pkt->pts);

    return pkt->size;
}