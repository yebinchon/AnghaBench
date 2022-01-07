
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_encoder_cmd {int flags; int cmd; } ;
typedef int V4L2Context ;
struct TYPE_2__ {int fd; } ;


 int AVERROR (scalar_t__) ;
 scalar_t__ ENOTTY ;
 int V4L2_ENC_CMD_STOP ;
 int VIDIOC_ENCODER_CMD ;
 int VIDIOC_STREAMOFF ;
 TYPE_1__* ctx_to_m2mctx (int *) ;
 scalar_t__ errno ;
 int ff_v4l2_context_set_status (int *,int ) ;
 int ioctl (int ,int ,struct v4l2_encoder_cmd*) ;

__attribute__((used)) static int v4l2_stop_encode(V4L2Context *ctx)
{
    struct v4l2_encoder_cmd cmd = {
        .cmd = V4L2_ENC_CMD_STOP,
        .flags = 0,
    };
    int ret;

    ret = ioctl(ctx_to_m2mctx(ctx)->fd, VIDIOC_ENCODER_CMD, &cmd);
    if (ret) {

        if (errno == ENOTTY)
            return ff_v4l2_context_set_status(ctx, VIDIOC_STREAMOFF);
        else
            return AVERROR(errno);
    }

    return 0;
}
