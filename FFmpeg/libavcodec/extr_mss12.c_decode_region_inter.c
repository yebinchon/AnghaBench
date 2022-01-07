
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int (* get_model_sym ) (TYPE_4__*,int *) ;} ;
struct TYPE_18__ {int mask_stride; int mask; int pal_stride; int pal_pic; int * pal; scalar_t__ rgb_pic; TYPE_1__* avctx; } ;
struct TYPE_17__ {int intra_pix_ctx; int inter_pix_ctx; int inter_region; TYPE_3__* c; } ;
struct TYPE_16__ {int err_recognition; } ;
typedef TYPE_2__ SliceContext ;
typedef TYPE_3__ MSS12Context ;
typedef TYPE_4__ ArithCoder ;


 int AV_EF_EXPLODE ;
 int copy_rectangles (TYPE_3__ const*,int,int,int,int) ;
 int decode_pixel (TYPE_4__*,int *,int *,int ,int ) ;
 scalar_t__ decode_region (TYPE_4__*,int ,int *,int,int,int,int,int ,int ,int *,int *) ;
 int decode_region_intra (TYPE_2__*,TYPE_4__*,int,int,int,int) ;
 int decode_region_masked (TYPE_3__ const*,TYPE_4__*,int ,int ,int ,int ,int,int,int,int,int *) ;
 int motion_compensation (TYPE_3__ const*,int,int,int,int) ;
 int stub1 (TYPE_4__*,int *) ;

__attribute__((used)) static int decode_region_inter(SliceContext *sc, ArithCoder *acoder,
                               int x, int y, int width, int height)
{
    MSS12Context const *c = sc->c;
    int mode;

    mode = acoder->get_model_sym(acoder, &sc->inter_region);

    if (!mode) {
        mode = decode_pixel(acoder, &sc->inter_pix_ctx, ((void*)0), 0, 0);
        if (mode < 0)
            return mode;

        if (c->avctx->err_recognition & AV_EF_EXPLODE &&
            ( c->rgb_pic && mode != 0x01 && mode != 0x02 && mode != 0x04 ||
             !c->rgb_pic && mode != 0x80 && mode != 0xFF))
            return -1;

        if (mode == 0x02)
            copy_rectangles(c, x, y, width, height);
        else if (mode == 0x04)
            return motion_compensation(c, x, y, width, height);
        else if (mode != 0x80)
            return decode_region_intra(sc, acoder, x, y, width, height);
    } else {
        if (decode_region(acoder, c->mask, ((void*)0),
                          x, y, width, height, c->mask_stride, 0,
                          &sc->inter_pix_ctx, &c->pal[0]) < 0)
            return -1;
        return decode_region_masked(c, acoder, c->pal_pic,
                                    c->pal_stride, c->mask,
                                    c->mask_stride,
                                    x, y, width, height,
                                    &sc->intra_pix_ctx);
    }

    return 0;
}
