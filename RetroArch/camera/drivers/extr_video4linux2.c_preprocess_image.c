
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scaler_ctx {int dummy; } ;
struct TYPE_4__ {size_t n_buffers; int fd; TYPE_1__* buffers; int buffer_output; struct scaler_ctx scaler; } ;
typedef TYPE_2__ video4linux_t ;
typedef int uint8_t ;
struct v4l2_buffer {size_t index; int memory; int type; int member_0; } ;
struct TYPE_3__ {scalar_t__ start; } ;



 int RARCH_ERR (char*) ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_MEMORY_MMAP ;
 int VIDIOC_DQBUF ;
 int VIDIOC_QBUF ;
 int errno ;
 int retro_assert (int) ;
 int scaler_ctx_scale_direct (struct scaler_ctx*,int ,int const*) ;
 int xioctl (int ,int ,struct v4l2_buffer*) ;

__attribute__((used)) static bool preprocess_image(void *data)
{
   struct scaler_ctx *ctx = ((void*)0);
   video4linux_t *v4l = (video4linux_t*)data;
   struct v4l2_buffer buf = {0};

   buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
   buf.memory = V4L2_MEMORY_MMAP;

   if (xioctl(v4l->fd, VIDIOC_DQBUF, &buf) == -1)
   {
      switch (errno)
      {
         case 128:
            break;
         default:
            RARCH_ERR("[V4L2]: VIDIOC_DQBUF.\n");
            break;
      }

      return 0;
   }

   retro_assert(buf.index < v4l->n_buffers);

   ctx = &v4l->scaler;

   scaler_ctx_scale_direct(ctx, v4l->buffer_output, (const uint8_t*)v4l->buffers[buf.index].start);

   if (xioctl(v4l->fd, VIDIOC_QBUF, &buf) == -1)
      RARCH_ERR("[V4L2]: VIDIOC_QBUF\n");

   return 1;
}
