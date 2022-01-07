
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int procamp_params ;
typedef int procamp_caps ;
typedef scalar_t__ VAStatus ;
struct TYPE_15__ {int max_value; int min_value; } ;
struct TYPE_16__ {int attrib; TYPE_2__ range; void* value; void* type; } ;
typedef TYPE_3__ VAProcFilterParameterBufferColorBalance ;
typedef TYPE_3__ VAProcFilterCapColorBalance ;
struct TYPE_17__ {int saturation; int hue; int contrast; int bright; int va_context; TYPE_1__* hwctx; } ;
typedef TYPE_5__ VAAPIVPPContext ;
struct TYPE_18__ {TYPE_5__* priv; } ;
struct TYPE_14__ {int display; } ;
typedef TYPE_5__ ProcampVAAPIContext ;
typedef TYPE_7__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int BRIGHTNESS_MAX ;
 int BRIGHTNESS_MIN ;
 int CONTRAST_MAX ;
 int CONTRAST_MIN ;
 int EIO ;
 int HUE_MAX ;
 int HUE_MIN ;
 int SATURATION_MAX ;
 int SATURATION_MIN ;
 int VAProcColorBalanceBrightness ;
 int VAProcColorBalanceContrast ;
 int VAProcColorBalanceCount ;
 int VAProcColorBalanceHue ;
 int VAProcColorBalanceSaturation ;
 void* VAProcFilterColorBalance ;
 int VAProcFilterParameterBufferType ;
 scalar_t__ VA_STATUS_SUCCESS ;
 int av_log (TYPE_7__*,int ,char*,scalar_t__,int ) ;
 int ff_vaapi_vpp_make_param_buffers (TYPE_7__*,int ,TYPE_3__**,int,int) ;
 void* map (int ,int ,int ,int ,int ) ;
 int memset (TYPE_3__**,int ,int) ;
 int vaErrorStr (scalar_t__) ;
 scalar_t__ vaQueryVideoProcFilterCaps (int ,int ,void*,TYPE_3__**,int*) ;

__attribute__((used)) static int procamp_vaapi_build_filter_params(AVFilterContext *avctx)
{
    VAAPIVPPContext *vpp_ctx = avctx->priv;
    ProcampVAAPIContext *ctx = avctx->priv;
    VAStatus vas;
    VAProcFilterParameterBufferColorBalance procamp_params[4];
    VAProcFilterCapColorBalance procamp_caps[VAProcColorBalanceCount];
    int num_caps;
    int i = 0;

    memset(&procamp_params, 0, sizeof(procamp_params));
    memset(&procamp_caps, 0, sizeof(procamp_caps));

    num_caps = VAProcColorBalanceCount;
    vas = vaQueryVideoProcFilterCaps(vpp_ctx->hwctx->display, vpp_ctx->va_context,
                                     VAProcFilterColorBalance, &procamp_caps, &num_caps);

    if (vas != VA_STATUS_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to query procamp "
               "filter caps: %d (%s).\n", vas, vaErrorStr(vas));
        return AVERROR(EIO);
    }


    procamp_params[i].type = VAProcFilterColorBalance;
    procamp_params[i].attrib = VAProcColorBalanceBrightness;
    procamp_params[i].value = map(ctx->bright, BRIGHTNESS_MIN, BRIGHTNESS_MAX,
                                   procamp_caps[VAProcColorBalanceBrightness-1].range.min_value,
                                   procamp_caps[VAProcColorBalanceBrightness-1].range.max_value);
    i++;


    procamp_params[i].type = VAProcFilterColorBalance;
    procamp_params[i].attrib = VAProcColorBalanceContrast;
    procamp_params[i].value = map(ctx->contrast, CONTRAST_MIN, CONTRAST_MAX,
                                   procamp_caps[VAProcColorBalanceContrast-1].range.min_value,
                                   procamp_caps[VAProcColorBalanceContrast-1].range.max_value);
    i++;


    procamp_params[i].type = VAProcFilterColorBalance;
    procamp_params[i].attrib = VAProcColorBalanceHue;
    procamp_params[i].value = map(ctx->hue, HUE_MIN, HUE_MAX,
                                   procamp_caps[VAProcColorBalanceHue-1].range.min_value,
                                   procamp_caps[VAProcColorBalanceHue-1].range.max_value);
    i++;


    procamp_params[i].type = VAProcFilterColorBalance;
    procamp_params[i].attrib = VAProcColorBalanceSaturation;
    procamp_params[i].value = map(ctx->saturation, SATURATION_MIN, SATURATION_MAX,
                                   procamp_caps[VAProcColorBalanceSaturation-1].range.min_value,
                                   procamp_caps[VAProcColorBalanceSaturation-1].range.max_value);
    i++;

    return ff_vaapi_vpp_make_param_buffers(avctx,
                                           VAProcFilterParameterBufferType,
                                           &procamp_params,
                                           sizeof(procamp_params[0]),
                                           i);
}
