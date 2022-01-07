
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct vdpau_picture_context {int dummy; } ;
struct TYPE_5__ {TYPE_2__* frames; } ;
typedef TYPE_1__ VP9SharedContext ;
struct TYPE_6__ {struct vdpau_picture_context* hwaccel_picture_private; } ;
typedef TYPE_2__ VP9Frame ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
typedef TYPE_3__ AVCodecContext ;


 size_t CUR_FRAME ;
 int ff_vdpau_add_buffer (struct vdpau_picture_context*,int const*,int) ;
 int const* start_code_prefix ;

__attribute__((used)) static int vdpau_vp9_decode_slice(AVCodecContext *avctx,
                                   const uint8_t *buffer, uint32_t size)
{
    VP9SharedContext *h = avctx->priv_data;
    VP9Frame pic = h->frames[CUR_FRAME];
    struct vdpau_picture_context *pic_ctx = pic.hwaccel_picture_private;

    int val;

    val = ff_vdpau_add_buffer(pic_ctx, start_code_prefix, 3);
    if (val)
        return val;

    val = ff_vdpau_add_buffer(pic_ctx, buffer, size);
    if (val)
        return val;

    return 0;
}
