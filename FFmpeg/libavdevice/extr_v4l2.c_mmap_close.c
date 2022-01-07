
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_data {int buffers; int * buf_len; int * buf_start; int fd; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int VIDIOC_STREAMOFF ;
 int av_freep (int **) ;
 int v4l2_ioctl (int ,int ,int*) ;
 int v4l2_munmap (int ,int ) ;

__attribute__((used)) static void mmap_close(struct video_data *s)
{
    enum v4l2_buf_type type;
    int i;

    type = V4L2_BUF_TYPE_VIDEO_CAPTURE;



    v4l2_ioctl(s->fd, VIDIOC_STREAMOFF, &type);
    for (i = 0; i < s->buffers; i++) {
        v4l2_munmap(s->buf_start[i], s->buf_len[i]);
    }
    av_freep(&s->buf_start);
    av_freep(&s->buf_len);
}
