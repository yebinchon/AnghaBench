
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int format; } ;
typedef TYPE_1__ V4L2Context ;
struct TYPE_6__ {int fd; } ;


 int VIDIOC_S_FMT ;
 TYPE_3__* ctx_to_m2mctx (TYPE_1__*) ;
 int ioctl (int ,int ,int *) ;

int ff_v4l2_context_set_format(V4L2Context* ctx)
{
    return ioctl(ctx_to_m2mctx(ctx)->fd, VIDIOC_S_FMT, &ctx->format);
}
