
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sharpness ;
typedef scalar_t__ VAStatus ;
struct TYPE_15__ {int value; int type; } ;
typedef TYPE_3__ VAProcFilterParameterBuffer ;
struct TYPE_14__ {int max_value; int min_value; } ;
struct TYPE_16__ {TYPE_2__ range; } ;
typedef TYPE_4__ VAProcFilterCap ;
struct TYPE_17__ {int sharpness; int va_context; TYPE_1__* hwctx; } ;
typedef TYPE_5__ VAAPIVPPContext ;
struct TYPE_18__ {TYPE_5__* priv; } ;
struct TYPE_13__ {int display; } ;
typedef TYPE_5__ SharpnessVAAPIContext ;
typedef TYPE_7__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EIO ;
 int SHARPNESS_MAX ;
 int SHARPNESS_MIN ;
 int VAProcFilterParameterBufferType ;
 int VAProcFilterSharpening ;
 scalar_t__ VA_STATUS_SUCCESS ;
 int av_log (TYPE_7__*,int ,char*,scalar_t__,int ) ;
 int ff_vaapi_vpp_make_param_buffers (TYPE_7__*,int ,TYPE_3__*,int,int) ;
 int map (int ,int ,int ,int ,int ) ;
 int vaErrorStr (scalar_t__) ;
 scalar_t__ vaQueryVideoProcFilterCaps (int ,int ,int ,TYPE_4__*,int*) ;

__attribute__((used)) static int sharpness_vaapi_build_filter_params(AVFilterContext *avctx)
{
    VAAPIVPPContext *vpp_ctx = avctx->priv;
    SharpnessVAAPIContext *ctx = avctx->priv;

    VAProcFilterCap caps;

    VAStatus vas;
    uint32_t num_caps = 1;

    VAProcFilterParameterBuffer sharpness;

    vas = vaQueryVideoProcFilterCaps(vpp_ctx->hwctx->display, vpp_ctx->va_context,
                                     VAProcFilterSharpening,
                                     &caps, &num_caps);
    if (vas != VA_STATUS_SUCCESS) {
        av_log(avctx, AV_LOG_ERROR, "Failed to query sharpness caps "
               "context: %d (%s).\n", vas, vaErrorStr(vas));
        return AVERROR(EIO);
    }

    sharpness.type = VAProcFilterSharpening;
    sharpness.value = map(ctx->sharpness,
                          SHARPNESS_MIN, SHARPNESS_MAX,
                          caps.range.min_value,
                          caps.range.max_value);
    return ff_vaapi_vpp_make_param_buffers(avctx,
                                           VAProcFilterParameterBufferType,
                                           &sharpness, sizeof(sharpness), 1);
}
