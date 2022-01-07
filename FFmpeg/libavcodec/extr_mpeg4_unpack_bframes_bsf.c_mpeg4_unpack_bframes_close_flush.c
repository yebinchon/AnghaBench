
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int b_frame_ref; } ;
typedef TYPE_1__ UnpackBFramesBSFContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVBSFContext ;


 int av_buffer_unref (int *) ;

__attribute__((used)) static void mpeg4_unpack_bframes_close_flush(AVBSFContext *bsfc)
{
    UnpackBFramesBSFContext *ctx = bsfc->priv_data;
    av_buffer_unref(&ctx->b_frame_ref);
}
