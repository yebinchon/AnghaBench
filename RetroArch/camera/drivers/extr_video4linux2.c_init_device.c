
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int width; int height; int pitch; int fd; int dev_name; } ;
typedef TYPE_3__ video4linux_t ;
struct TYPE_5__ {int width; scalar_t__ pixelformat; scalar_t__ field; int bytesperline; int height; } ;
struct TYPE_6__ {TYPE_1__ pix; } ;
struct v4l2_format {int capabilities; TYPE_2__ fmt; void* type; int defrect; int c; int member_0; } ;
struct v4l2_cropcap {int capabilities; TYPE_2__ fmt; void* type; int defrect; int c; int member_0; } ;
struct v4l2_crop {int capabilities; TYPE_2__ fmt; void* type; int defrect; int c; int member_0; } ;
struct v4l2_capability {int capabilities; TYPE_2__ fmt; void* type; int defrect; int c; int member_0; } ;


 scalar_t__ EINVAL ;
 int MAX (int ,int) ;
 int RARCH_ERR (char*,...) ;
 int RARCH_LOG (char*,int,int ) ;
 void* V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 scalar_t__ V4L2_FIELD_INTERLACED ;
 scalar_t__ V4L2_FIELD_NONE ;
 scalar_t__ V4L2_PIX_FMT_YUYV ;
 int VIDIOC_CROPCAP ;
 int VIDIOC_QUERYCAP ;
 int VIDIOC_S_CROP ;
 int VIDIOC_S_FMT ;
 scalar_t__ errno ;
 int init_mmap (TYPE_3__*) ;
 scalar_t__ xioctl (int ,int ,struct v4l2_format*) ;

__attribute__((used)) static bool init_device(void *data)
{
   struct v4l2_crop crop;
   struct v4l2_capability cap;
   struct v4l2_format fmt = {0};
   struct v4l2_cropcap cropcap = {0};
   video4linux_t *v4l = (video4linux_t*)data;

   if (xioctl(v4l->fd, VIDIOC_QUERYCAP, &cap) < 0)
   {
      if (errno == EINVAL)
         RARCH_ERR("[V4L2]: %s is no V4L2 device.\n", v4l->dev_name);
      else
         RARCH_ERR("[V4L2]: Error - VIDIOC_QUERYCAP.\n");
      return 0;
   }

   if (!(cap.capabilities & V4L2_CAP_VIDEO_CAPTURE))
   {
      RARCH_ERR("[V4L2]: %s is no video capture device.\n", v4l->dev_name);
      return 0;
   }

   if (!(cap.capabilities & V4L2_CAP_STREAMING))
   {
      RARCH_ERR("[V4L2]: %s does not support streaming I/O (V4L2_CAP_STREAMING).\n",
            v4l->dev_name);
      return 0;
   }

   cropcap.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

   if (xioctl(v4l->fd, VIDIOC_CROPCAP, &cropcap) == 0)
   {
      crop.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
      crop.c = cropcap.defrect;

      xioctl(v4l->fd, VIDIOC_S_CROP, &crop);
   }

   fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
   fmt.fmt.pix.width = v4l->width;
   fmt.fmt.pix.height = v4l->height;
   fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_YUYV;
   fmt.fmt.pix.field = V4L2_FIELD_NONE;

   if (xioctl(v4l->fd, VIDIOC_S_FMT, &fmt) < 0)
   {
      RARCH_ERR("[V4L2]: Error - VIDIOC_S_FMT\n");
      return 0;
   }


   v4l->width = fmt.fmt.pix.width;
   v4l->height = fmt.fmt.pix.height;
   v4l->pitch = MAX(fmt.fmt.pix.bytesperline, v4l->width * 2);





   if (fmt.fmt.pix.pixelformat != V4L2_PIX_FMT_YUYV)
   {
      RARCH_ERR("[V4L2]: The V4L2 device doesn't support YUYV.\n");
      return 0;
   }

   if (fmt.fmt.pix.field != V4L2_FIELD_NONE
         && fmt.fmt.pix.field != V4L2_FIELD_INTERLACED)
   {
      RARCH_ERR("[V4L2]: The V4L2 device doesn't support progressive nor interlaced video.\n");
      return 0;
   }

   RARCH_LOG("[V4L2]: device: %u x %u.\n", v4l->width, v4l->height);

   return init_mmap(v4l);
}
