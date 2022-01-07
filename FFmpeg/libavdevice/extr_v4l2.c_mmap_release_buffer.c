
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct video_data {int dummy; } ;
struct v4l2_buffer {int index; int memory; int type; int member_0; } ;
struct buff_data {int index; struct video_data* s; } ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_MEMORY_MMAP ;
 int av_free (struct buff_data*) ;
 int enqueue_buffer (struct video_data*,struct v4l2_buffer*) ;

__attribute__((used)) static void mmap_release_buffer(void *opaque, uint8_t *data)
{
    struct v4l2_buffer buf = { 0 };
    struct buff_data *buf_descriptor = opaque;
    struct video_data *s = buf_descriptor->s;

    buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    buf.memory = V4L2_MEMORY_MMAP;
    buf.index = buf_descriptor->index;
    av_free(buf_descriptor);

    enqueue_buffer(s, &buf);
}
