
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ frm2_size; scalar_t__ frm1_size; scalar_t__ frm0_size; int rle_buf; int stored_frame; int frm2; int frm1; int frm0; } ;
typedef TYPE_1__ SANMVideoContext ;


 int av_freep (int *) ;
 int init_sizes (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void destroy_buffers(SANMVideoContext *ctx)
{
    av_freep(&ctx->frm0);
    av_freep(&ctx->frm1);
    av_freep(&ctx->frm2);
    av_freep(&ctx->stored_frame);
    av_freep(&ctx->rle_buf);
    ctx->frm0_size =
    ctx->frm1_size =
    ctx->frm2_size = 0;
    init_sizes(ctx, 0, 0);
}
