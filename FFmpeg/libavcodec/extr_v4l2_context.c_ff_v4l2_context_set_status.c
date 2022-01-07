
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int type; int streamon; } ;
typedef TYPE_1__ V4L2Context ;
struct TYPE_6__ {int fd; } ;


 int AVERROR (int ) ;
 scalar_t__ VIDIOC_STREAMON ;
 TYPE_3__* ctx_to_m2mctx (TYPE_1__*) ;
 int errno ;
 int ioctl (int ,scalar_t__,int*) ;

int ff_v4l2_context_set_status(V4L2Context* ctx, uint32_t cmd)
{
    int type = ctx->type;
    int ret;

    ret = ioctl(ctx_to_m2mctx(ctx)->fd, cmd, &type);
    if (ret < 0)
        return AVERROR(errno);

    ctx->streamon = (cmd == VIDIOC_STREAMON);

    return 0;
}
