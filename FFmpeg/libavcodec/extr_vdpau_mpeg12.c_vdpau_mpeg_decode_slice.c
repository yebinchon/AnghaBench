
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_7__ {int slice_count; } ;
struct TYPE_8__ {TYPE_1__ mpeg; } ;
struct vdpau_picture_context {TYPE_2__ info; } ;
struct TYPE_11__ {TYPE_4__* priv_data; } ;
struct TYPE_10__ {TYPE_3__* current_picture_ptr; } ;
struct TYPE_9__ {struct vdpau_picture_context* hwaccel_picture_private; } ;
typedef TYPE_3__ Picture ;
typedef TYPE_4__ MpegEncContext ;
typedef TYPE_5__ AVCodecContext ;


 int ff_vdpau_add_buffer (struct vdpau_picture_context*,int const*,int ) ;

__attribute__((used)) static int vdpau_mpeg_decode_slice(AVCodecContext *avctx,
                                   const uint8_t *buffer, uint32_t size)
{
    MpegEncContext * const s = avctx->priv_data;
    Picture *pic = s->current_picture_ptr;
    struct vdpau_picture_context *pic_ctx = pic->hwaccel_picture_private;
    int val;

    val = ff_vdpau_add_buffer(pic_ctx, buffer, size);
    if (val < 0)
        return val;

    pic_ctx->info.mpeg.slice_count++;
    return 0;
}
