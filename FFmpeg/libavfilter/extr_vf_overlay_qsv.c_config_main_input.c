
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ PixelAlphaEnable; scalar_t__ GlobalAlphaEnable; int DstH; int DstW; scalar_t__ DstY; scalar_t__ DstX; } ;
typedef TYPE_2__ mfxVPPCompInputStream ;
struct TYPE_13__ {TYPE_3__* priv; } ;
struct TYPE_12__ {int h; int w; int format; TYPE_5__* dst; } ;
struct TYPE_9__ {TYPE_2__* InputStream; } ;
struct TYPE_11__ {int * var_values; TYPE_1__ comp_conf; } ;
typedef TYPE_3__ QSVOverlayContext ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AV_LOG_DEBUG ;
 int FF_INLINK_IDX (TYPE_4__*) ;
 size_t VAR_MAIN_iH ;
 size_t VAR_MAIN_iW ;
 size_t VAR_MH ;
 size_t VAR_MW ;
 int av_get_pix_fmt_name (int ) ;
 int av_log (TYPE_5__*,int ,char*,int ,int ) ;

__attribute__((used)) static int config_main_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    QSVOverlayContext *vpp = ctx->priv;
    mfxVPPCompInputStream *st = &vpp->comp_conf.InputStream[0];

    av_log(ctx, AV_LOG_DEBUG, "Input[%d] is of %s.\n", FF_INLINK_IDX(inlink),
           av_get_pix_fmt_name(inlink->format));

    vpp->var_values[VAR_MAIN_iW] =
    vpp->var_values[VAR_MW] = inlink->w;
    vpp->var_values[VAR_MAIN_iH] =
    vpp->var_values[VAR_MH] = inlink->h;

    st->DstX = 0;
    st->DstY = 0;
    st->DstW = inlink->w;
    st->DstH = inlink->h;
    st->GlobalAlphaEnable = 0;
    st->PixelAlphaEnable = 0;

    return 0;
}
