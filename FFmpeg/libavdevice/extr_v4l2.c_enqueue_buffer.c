
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_data {int buffers_queued; int fd; } ;
struct v4l2_buffer {int dummy; } ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int VIDIOC_QBUF ;
 int atomic_fetch_add (int *,int) ;
 int av_err2str (int) ;
 int av_log (int *,int ,char*,int ) ;
 int errno ;
 scalar_t__ v4l2_ioctl (int ,int ,struct v4l2_buffer*) ;

__attribute__((used)) static int enqueue_buffer(struct video_data *s, struct v4l2_buffer *buf)
{
    int res = 0;

    if (v4l2_ioctl(s->fd, VIDIOC_QBUF, buf) < 0) {
        res = AVERROR(errno);
        av_log(((void*)0), AV_LOG_ERROR, "ioctl(VIDIOC_QBUF): %s\n", av_err2str(res));
    } else {
        atomic_fetch_add(&s->buffers_queued, 1);
    }

    return res;
}
