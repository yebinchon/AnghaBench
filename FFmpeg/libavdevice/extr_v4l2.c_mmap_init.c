
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct video_data {int buffers; scalar_t__* buf_len; scalar_t__ frame_size; int * buf_start; int fd; } ;
struct TYPE_5__ {int offset; } ;
struct v4l2_requestbuffers {int count; int index; scalar_t__ length; TYPE_1__ m; int memory; int type; } ;
struct v4l2_buffer {int count; int index; scalar_t__ length; TYPE_1__ m; int memory; int type; } ;
struct TYPE_6__ {struct video_data* priv_data; } ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_MEMORY_MMAP ;
 int VIDIOC_QUERYBUF ;
 int VIDIOC_REQBUFS ;
 int av_err2str (int) ;
 int av_freep (int **) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 void* av_malloc_array (int,int) ;
 int desired_video_buffers ;
 int errno ;
 scalar_t__ v4l2_ioctl (int ,int ,struct v4l2_requestbuffers*) ;
 int v4l2_mmap (int *,scalar_t__,int,int ,int ,int ) ;

__attribute__((used)) static int mmap_init(AVFormatContext *ctx)
{
    int i, res;
    struct video_data *s = ctx->priv_data;
    struct v4l2_requestbuffers req = {
        .type = V4L2_BUF_TYPE_VIDEO_CAPTURE,
        .count = desired_video_buffers,
        .memory = V4L2_MEMORY_MMAP
    };

    if (v4l2_ioctl(s->fd, VIDIOC_REQBUFS, &req) < 0) {
        res = AVERROR(errno);
        av_log(ctx, AV_LOG_ERROR, "ioctl(VIDIOC_REQBUFS): %s\n", av_err2str(res));
        return res;
    }

    if (req.count < 2) {
        av_log(ctx, AV_LOG_ERROR, "Insufficient buffer memory\n");
        return AVERROR(ENOMEM);
    }
    s->buffers = req.count;
    s->buf_start = av_malloc_array(s->buffers, sizeof(void *));
    if (!s->buf_start) {
        av_log(ctx, AV_LOG_ERROR, "Cannot allocate buffer pointers\n");
        return AVERROR(ENOMEM);
    }
    s->buf_len = av_malloc_array(s->buffers, sizeof(unsigned int));
    if (!s->buf_len) {
        av_log(ctx, AV_LOG_ERROR, "Cannot allocate buffer sizes\n");
        av_freep(&s->buf_start);
        return AVERROR(ENOMEM);
    }

    for (i = 0; i < req.count; i++) {
        struct v4l2_buffer buf = {
            .type = V4L2_BUF_TYPE_VIDEO_CAPTURE,
            .index = i,
            .memory = V4L2_MEMORY_MMAP
        };
        if (v4l2_ioctl(s->fd, VIDIOC_QUERYBUF, &buf) < 0) {
            res = AVERROR(errno);
            av_log(ctx, AV_LOG_ERROR, "ioctl(VIDIOC_QUERYBUF): %s\n", av_err2str(res));
            return res;
        }

        s->buf_len[i] = buf.length;
        if (s->frame_size > 0 && s->buf_len[i] < s->frame_size) {
            av_log(ctx, AV_LOG_ERROR,
                   "buf_len[%d] = %d < expected frame size %d\n",
                   i, s->buf_len[i], s->frame_size);
            return AVERROR(ENOMEM);
        }
        s->buf_start[i] = v4l2_mmap(((void*)0), buf.length,
                               PROT_READ | PROT_WRITE, MAP_SHARED,
                               s->fd, buf.m.offset);

        if (s->buf_start[i] == MAP_FAILED) {
            res = AVERROR(errno);
            av_log(ctx, AV_LOG_ERROR, "mmap: %s\n", av_err2str(res));
            return res;
        }
    }

    return 0;
}
