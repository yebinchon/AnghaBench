
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xvmc_pix_fmt {scalar_t__ filled_mv_blocks_num; } ;
struct TYPE_6__ {TYPE_1__* f; } ;
struct MpegEncContext {TYPE_2__ current_picture; } ;
struct TYPE_7__ {struct MpegEncContext* priv_data; } ;
struct TYPE_5__ {scalar_t__* data; } ;
typedef TYPE_3__ AVCodecContext ;


 int assert (struct xvmc_pix_fmt*) ;
 int ff_mpeg_draw_horiz_band (struct MpegEncContext*,int ,int ) ;

__attribute__((used)) static int ff_xvmc_field_end(AVCodecContext *avctx)
{
    struct MpegEncContext *s = avctx->priv_data;
    struct xvmc_pix_fmt *render = (struct xvmc_pix_fmt*)s->current_picture.f->data[2];
    assert(render);

    if (render->filled_mv_blocks_num > 0)
        ff_mpeg_draw_horiz_band(s, 0, 0);
    return 0;
}
