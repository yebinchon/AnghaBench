
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int num_buffers; TYPE_2__* buffers; int type; } ;
typedef TYPE_1__ V4L2Context ;
struct TYPE_7__ {scalar_t__ status; } ;
typedef TYPE_2__ V4L2Buffer ;


 scalar_t__ V4L2BUF_AVAILABLE ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 scalar_t__ v4l2_dequeue_v4l2buf (TYPE_1__*,int) ;

__attribute__((used)) static V4L2Buffer* v4l2_getfree_v4l2buf(V4L2Context *ctx)
{
    int timeout = 0;
    int i;


    if (V4L2_TYPE_IS_OUTPUT(ctx->type)) {
          do {
          } while (v4l2_dequeue_v4l2buf(ctx, timeout));
    }

    for (i = 0; i < ctx->num_buffers; i++) {
        if (ctx->buffers[i].status == V4L2BUF_AVAILABLE)
            return &ctx->buffers[i];
    }

    return ((void*)0);
}
