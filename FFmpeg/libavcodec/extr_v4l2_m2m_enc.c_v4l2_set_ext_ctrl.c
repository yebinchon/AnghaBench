
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; } ;
struct v4l2_ext_controls {int count; struct v4l2_ext_control* controls; int ctrl_class; TYPE_1__ member_0; } ;
struct v4l2_ext_control {int value; unsigned int id; int member_0; } ;
struct TYPE_5__ {int avctx; int fd; } ;
typedef TYPE_2__ V4L2m2mContext ;


 int AV_LOG_DEBUG ;
 int AV_LOG_WARNING ;
 int V4L2_CTRL_CLASS_MPEG ;
 int VIDIOC_S_EXT_CTRLS ;
 int av_log (int ,int ,char*,char const*,int) ;
 int errno ;
 scalar_t__ ioctl (int ,int ,struct v4l2_ext_controls*) ;
 int strerror (int ) ;

__attribute__((used)) static inline void v4l2_set_ext_ctrl(V4L2m2mContext *s, unsigned int id, signed int value, const char *name)
{
    struct v4l2_ext_controls ctrls = { { 0 } };
    struct v4l2_ext_control ctrl = { 0 };


    ctrls.ctrl_class = V4L2_CTRL_CLASS_MPEG;
    ctrls.controls = &ctrl;
    ctrls.count = 1;


    ctrl.value = value;
    ctrl.id = id;

    if (ioctl(s->fd, VIDIOC_S_EXT_CTRLS, &ctrls) < 0)
        av_log(s->avctx, AV_LOG_WARNING, "Failed to set %s: %s\n", name, strerror(errno));
    else
        av_log(s->avctx, AV_LOG_DEBUG, "Encoder: %s = %d\n", name, value);
}
