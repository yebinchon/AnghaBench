
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * buffers; int name; } ;
typedef TYPE_1__ V4L2Context ;


 int AV_LOG_WARNING ;
 int av_free (int *) ;
 int av_log (int ,int ,char*,int ) ;
 int logger (TYPE_1__*) ;
 int v4l2_release_buffers (TYPE_1__*) ;

void ff_v4l2_context_release(V4L2Context* ctx)
{
    int ret;

    if (!ctx->buffers)
        return;

    ret = v4l2_release_buffers(ctx);
    if (ret)
        av_log(logger(ctx), AV_LOG_WARNING, "V4L2 failed to unmap the %s buffers\n", ctx->name);

    av_free(ctx->buffers);
    ctx->buffers = ((void*)0);
}
