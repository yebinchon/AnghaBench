
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {int slice_count; } ;
struct TYPE_9__ {TYPE_1__ vc1; } ;
struct vdpau_picture_context {TYPE_2__ info; } ;
struct TYPE_12__ {TYPE_4__* current_picture_ptr; } ;
struct TYPE_10__ {TYPE_5__ s; } ;
typedef TYPE_3__ VC1Context ;
struct TYPE_13__ {TYPE_3__* priv_data; } ;
struct TYPE_11__ {struct vdpau_picture_context* hwaccel_picture_private; } ;
typedef TYPE_4__ Picture ;
typedef TYPE_5__ MpegEncContext ;
typedef TYPE_6__ AVCodecContext ;


 int ff_vdpau_add_buffer (struct vdpau_picture_context*,int const*,int ) ;

__attribute__((used)) static int vdpau_vc1_decode_slice(AVCodecContext *avctx,
                                  const uint8_t *buffer, uint32_t size)
{
    VC1Context * const v = avctx->priv_data;
    MpegEncContext * const s = &v->s;
    Picture *pic = s->current_picture_ptr;
    struct vdpau_picture_context *pic_ctx = pic->hwaccel_picture_private;
    int val;

    val = ff_vdpau_add_buffer(pic_ctx, buffer, size);
    if (val < 0)
        return val;

    pic_ctx->info.vc1.slice_count++;
    return 0;
}
