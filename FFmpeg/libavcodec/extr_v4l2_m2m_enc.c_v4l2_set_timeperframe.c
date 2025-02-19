
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {unsigned int denominator; unsigned int numerator; } ;
struct TYPE_9__ {TYPE_4__ timeperframe; } ;
struct TYPE_8__ {TYPE_3__ output; } ;
struct v4l2_streamparm {TYPE_2__ parm; int type; int member_0; } ;
struct TYPE_7__ {int type; } ;
struct TYPE_11__ {int avctx; int fd; TYPE_1__ output; } ;
typedef TYPE_5__ V4L2m2mContext ;


 int AV_LOG_WARNING ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 scalar_t__ V4L2_TYPE_IS_MULTIPLANAR (int ) ;
 int VIDIOC_S_PARM ;
 int av_log (int ,int ,char*) ;
 scalar_t__ ioctl (int ,int ,struct v4l2_streamparm*) ;

__attribute__((used)) static inline void v4l2_set_timeperframe(V4L2m2mContext *s, unsigned int num, unsigned int den)
{
    struct v4l2_streamparm parm = { 0 };

    parm.type = V4L2_TYPE_IS_MULTIPLANAR(s->output.type) ? V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE : V4L2_BUF_TYPE_VIDEO_OUTPUT;
    parm.parm.output.timeperframe.denominator = den;
    parm.parm.output.timeperframe.numerator = num;

    if (ioctl(s->fd, VIDIOC_S_PARM, &parm) < 0)
        av_log(s->avctx, AV_LOG_WARNING, "Failed to set timeperframe");
}
