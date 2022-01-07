
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int GlobalAlpha; int GlobalAlphaEnable; int PixelAlphaEnable; int DstH; int DstW; int DstY; int DstX; } ;
typedef TYPE_2__ mfxVPPCompInputStream ;
struct TYPE_15__ {TYPE_3__* priv; } ;
struct TYPE_14__ {int h; int w; int format; TYPE_5__* dst; } ;
struct TYPE_11__ {TYPE_2__* InputStream; } ;
struct TYPE_13__ {int overlay_alpha; int * var_values; TYPE_1__ comp_conf; } ;
typedef TYPE_3__ QSVOverlayContext ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AV_LOG_DEBUG ;
 int FF_INLINK_IDX (TYPE_4__*) ;
 size_t VAR_OH ;
 size_t VAR_OVERLAY_iH ;
 size_t VAR_OVERLAY_iW ;
 size_t VAR_OW ;
 size_t VAR_OX ;
 size_t VAR_OY ;
 int av_get_pix_fmt_name (int ) ;
 int av_log (TYPE_5__*,int ,char*,int ,int ) ;
 int eval_expr (TYPE_5__*) ;
 int have_alpha_planar (TYPE_4__*) ;

__attribute__((used)) static int config_overlay_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    QSVOverlayContext *vpp = ctx->priv;
    mfxVPPCompInputStream *st = &vpp->comp_conf.InputStream[1];
    int ret = 0;

    av_log(ctx, AV_LOG_DEBUG, "Input[%d] is of %s.\n", FF_INLINK_IDX(inlink),
           av_get_pix_fmt_name(inlink->format));

    vpp->var_values[VAR_OVERLAY_iW] = inlink->w;
    vpp->var_values[VAR_OVERLAY_iH] = inlink->h;

    ret = eval_expr(ctx);
    if (ret < 0)
        return ret;

    st->DstX = vpp->var_values[VAR_OX];
    st->DstY = vpp->var_values[VAR_OY];
    st->DstW = vpp->var_values[VAR_OW];
    st->DstH = vpp->var_values[VAR_OH];
    st->GlobalAlpha = vpp->overlay_alpha;
    st->GlobalAlphaEnable = (st->GlobalAlpha < 255);
    st->PixelAlphaEnable = have_alpha_planar(inlink);

    return 0;
}
