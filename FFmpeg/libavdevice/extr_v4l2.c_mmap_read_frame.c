
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct video_data {int buffers; scalar_t__ frame_size; int * buf_start; int buffers_queued; int fd; } ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct v4l2_buffer {int index; int flags; scalar_t__ bytesused; struct timeval timestamp; int memory; int type; } ;
struct buff_data {size_t index; struct video_data* s; } ;
struct TYPE_10__ {scalar_t__ video_codec_id; struct video_data* priv_data; } ;
struct TYPE_9__ {scalar_t__ size; scalar_t__ pts; int buf; int data; } ;
typedef TYPE_1__ AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (scalar_t__) ;
 scalar_t__ AV_CODEC_ID_CPIA ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOMEM ;
 int FFMAX (int,int) ;
 int INT64_C (int) ;
 int V4L2_BUF_FLAG_ERROR ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_MEMORY_MMAP ;
 int VIDIOC_DQBUF ;
 int atomic_fetch_add (int *,int) ;
 int atomic_load (int *) ;
 int av_assert0 (int) ;
 int av_buffer_create (int ,scalar_t__,int ,struct buff_data*,int ) ;
 int av_err2str (int) ;
 int av_freep (struct buff_data**) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 struct buff_data* av_malloc (int) ;
 int av_new_packet (TYPE_1__*,scalar_t__) ;
 int av_packet_unref (TYPE_1__*) ;
 int convert_timestamp (TYPE_2__*,scalar_t__*) ;
 int enqueue_buffer (struct video_data*,struct v4l2_buffer*) ;
 scalar_t__ errno ;
 int memcpy (int ,int ,scalar_t__) ;
 int mmap_release_buffer ;
 int v4l2_ioctl (int ,int ,struct v4l2_buffer*) ;

__attribute__((used)) static int mmap_read_frame(AVFormatContext *ctx, AVPacket *pkt)
{
    struct video_data *s = ctx->priv_data;
    struct v4l2_buffer buf = {
        .type = V4L2_BUF_TYPE_VIDEO_CAPTURE,
        .memory = V4L2_MEMORY_MMAP
    };
    struct timeval buf_ts;
    int res;

    pkt->size = 0;


    while ((res = v4l2_ioctl(s->fd, VIDIOC_DQBUF, &buf)) < 0 && (errno == EINTR));
    if (res < 0) {
        if (errno == EAGAIN)
            return AVERROR(EAGAIN);

        res = AVERROR(errno);
        av_log(ctx, AV_LOG_ERROR, "ioctl(VIDIOC_DQBUF): %s\n",
               av_err2str(res));
        return res;
    }

    buf_ts = buf.timestamp;

    if (buf.index >= s->buffers) {
        av_log(ctx, AV_LOG_ERROR, "Invalid buffer index received.\n");
        return AVERROR(EINVAL);
    }
    atomic_fetch_add(&s->buffers_queued, -1);

    av_assert0(atomic_load(&s->buffers_queued) >= 1);
    {


        if (ctx->video_codec_id == AV_CODEC_ID_CPIA)
            s->frame_size = buf.bytesused;

        if (s->frame_size > 0 && buf.bytesused != s->frame_size) {
            av_log(ctx, AV_LOG_WARNING,
                   "Dequeued v4l2 buffer contains %d bytes, but %d were expected. Flags: 0x%08X.\n",
                   buf.bytesused, s->frame_size, buf.flags);
            buf.bytesused = 0;
        }
    }


    if (atomic_load(&s->buffers_queued) == FFMAX(s->buffers / 8, 1)) {

        res = av_new_packet(pkt, buf.bytesused);
        if (res < 0) {
            av_log(ctx, AV_LOG_ERROR, "Error allocating a packet.\n");
            enqueue_buffer(s, &buf);
            return res;
        }
        memcpy(pkt->data, s->buf_start[buf.index], buf.bytesused);

        res = enqueue_buffer(s, &buf);
        if (res) {
            av_packet_unref(pkt);
            return res;
        }
    } else {
        struct buff_data *buf_descriptor;

        pkt->data = s->buf_start[buf.index];
        pkt->size = buf.bytesused;

        buf_descriptor = av_malloc(sizeof(struct buff_data));
        if (!buf_descriptor) {



            av_log(ctx, AV_LOG_ERROR, "Failed to allocate a buffer descriptor\n");
            enqueue_buffer(s, &buf);

            return AVERROR(ENOMEM);
        }
        buf_descriptor->index = buf.index;
        buf_descriptor->s = s;

        pkt->buf = av_buffer_create(pkt->data, pkt->size, mmap_release_buffer,
                                    buf_descriptor, 0);
        if (!pkt->buf) {
            av_log(ctx, AV_LOG_ERROR, "Failed to create a buffer\n");
            enqueue_buffer(s, &buf);
            av_freep(&buf_descriptor);
            return AVERROR(ENOMEM);
        }
    }
    pkt->pts = buf_ts.tv_sec * INT64_C(1000000) + buf_ts.tv_usec;
    convert_timestamp(ctx, &pkt->pts);

    return pkt->size;
}
