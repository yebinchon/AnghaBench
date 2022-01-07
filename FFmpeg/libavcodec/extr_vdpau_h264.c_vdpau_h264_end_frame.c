
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct vdpau_picture_context {int dummy; } ;
struct TYPE_11__ {TYPE_3__* priv_data; } ;
struct TYPE_10__ {TYPE_1__* avctx; TYPE_2__* cur_pic_ptr; int * slice_ctx; } ;
struct TYPE_9__ {int f; struct vdpau_picture_context* hwaccel_picture_private; } ;
struct TYPE_8__ {int height; } ;
typedef int H264SliceContext ;
typedef TYPE_2__ H264Picture ;
typedef TYPE_3__ H264Context ;
typedef TYPE_4__ AVCodecContext ;


 int ff_h264_draw_horiz_band (TYPE_3__*,int *,int ,int ) ;
 int ff_vdpau_common_end_frame (TYPE_4__*,int ,struct vdpau_picture_context*) ;

__attribute__((used)) static int vdpau_h264_end_frame(AVCodecContext *avctx)
{
    H264Context *h = avctx->priv_data;
    H264SliceContext *sl = &h->slice_ctx[0];
    H264Picture *pic = h->cur_pic_ptr;
    struct vdpau_picture_context *pic_ctx = pic->hwaccel_picture_private;
    int val;

    val = ff_vdpau_common_end_frame(avctx, pic->f, pic_ctx);
    if (val < 0)
        return val;

    ff_h264_draw_horiz_band(h, sl, 0, h->avctx->height);
    return 0;
}
