
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vp9_dxva2_picture_context {scalar_t__ bitstream_size; int pp; } ;
struct TYPE_9__ {TYPE_2__* frames; } ;
typedef TYPE_3__ VP9SharedContext ;
struct TYPE_10__ {TYPE_3__* priv_data; } ;
struct TYPE_7__ {int f; } ;
struct TYPE_8__ {TYPE_1__ tf; struct vp9_dxva2_picture_context* hwaccel_picture_private; } ;
typedef TYPE_4__ AVCodecContext ;


 size_t CUR_FRAME ;
 int commit_bitstream_and_slice_buffer ;
 int ff_dxva2_common_end_frame (TYPE_4__*,int ,int *,int,int *,int ,int ) ;

__attribute__((used)) static int dxva2_vp9_end_frame(AVCodecContext *avctx)
{
    VP9SharedContext *h = avctx->priv_data;
    struct vp9_dxva2_picture_context *ctx_pic = h->frames[CUR_FRAME].hwaccel_picture_private;
    int ret;

    if (ctx_pic->bitstream_size <= 0)
        return -1;

    ret = ff_dxva2_common_end_frame(avctx, h->frames[CUR_FRAME].tf.f,
                                    &ctx_pic->pp, sizeof(ctx_pic->pp),
                                    ((void*)0), 0,
                                    commit_bitstream_and_slice_buffer);
    return ret;
}
