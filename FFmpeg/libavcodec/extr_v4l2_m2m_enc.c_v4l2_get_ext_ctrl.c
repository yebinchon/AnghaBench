
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int member_0; } ;
struct v4l2_ext_controls {int count; struct v4l2_ext_control* controls; int ctrl_class; TYPE_1__ member_0; } ;
struct v4l2_ext_control {unsigned int id; int value; int member_0; } ;
struct TYPE_5__ {int avctx; int fd; } ;
typedef TYPE_2__ V4L2m2mContext ;


 int AV_LOG_WARNING ;
 int V4L2_CTRL_CLASS_MPEG ;
 int VIDIOC_G_EXT_CTRLS ;
 int av_log (int ,int ,char*,char const*) ;
 int ioctl (int ,int ,struct v4l2_ext_controls*) ;

__attribute__((used)) static inline int v4l2_get_ext_ctrl(V4L2m2mContext *s, unsigned int id, signed int *value, const char *name)
{
    struct v4l2_ext_controls ctrls = { { 0 } };
    struct v4l2_ext_control ctrl = { 0 };
    int ret;


    ctrls.ctrl_class = V4L2_CTRL_CLASS_MPEG;
    ctrls.controls = &ctrl;
    ctrls.count = 1;


    ctrl.id = id ;

    ret = ioctl(s->fd, VIDIOC_G_EXT_CTRLS, &ctrls);
    if (ret < 0) {
        av_log(s->avctx, AV_LOG_WARNING, "Failed to set %s\n", name);
        return ret;
    }

    *value = ctrl.value;

    return 0;
}
