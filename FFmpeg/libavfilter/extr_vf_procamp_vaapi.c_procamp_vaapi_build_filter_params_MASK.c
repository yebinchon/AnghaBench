#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  procamp_params ;
typedef  int /*<<< orphan*/  procamp_caps ;
typedef  scalar_t__ VAStatus ;
struct TYPE_15__ {int /*<<< orphan*/  max_value; int /*<<< orphan*/  min_value; } ;
struct TYPE_16__ {int attrib; TYPE_2__ range; void* value; void* type; } ;
typedef  TYPE_3__ VAProcFilterParameterBufferColorBalance ;
typedef  TYPE_3__ VAProcFilterCapColorBalance ;
struct TYPE_17__ {int /*<<< orphan*/  saturation; int /*<<< orphan*/  hue; int /*<<< orphan*/  contrast; int /*<<< orphan*/  bright; int /*<<< orphan*/  va_context; TYPE_1__* hwctx; } ;
typedef  TYPE_5__ VAAPIVPPContext ;
struct TYPE_18__ {TYPE_5__* priv; } ;
struct TYPE_14__ {int /*<<< orphan*/  display; } ;
typedef  TYPE_5__ ProcampVAAPIContext ;
typedef  TYPE_7__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  BRIGHTNESS_MAX ; 
 int /*<<< orphan*/  BRIGHTNESS_MIN ; 
 int /*<<< orphan*/  CONTRAST_MAX ; 
 int /*<<< orphan*/  CONTRAST_MIN ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  HUE_MAX ; 
 int /*<<< orphan*/  HUE_MIN ; 
 int /*<<< orphan*/  SATURATION_MAX ; 
 int /*<<< orphan*/  SATURATION_MIN ; 
 int VAProcColorBalanceBrightness ; 
 int VAProcColorBalanceContrast ; 
 int VAProcColorBalanceCount ; 
 int VAProcColorBalanceHue ; 
 int VAProcColorBalanceSaturation ; 
 void* VAProcFilterColorBalance ; 
 int /*<<< orphan*/  VAProcFilterParameterBufferType ; 
 scalar_t__ VA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_7__*,int /*<<< orphan*/ ,TYPE_3__**,int,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,TYPE_3__**,int*) ; 

__attribute__((used)) static int FUNC7(AVFilterContext *avctx)
{
    VAAPIVPPContext *vpp_ctx = avctx->priv;
    ProcampVAAPIContext *ctx = avctx->priv;
    VAStatus vas;
    VAProcFilterParameterBufferColorBalance procamp_params[4];
    VAProcFilterCapColorBalance procamp_caps[VAProcColorBalanceCount];
    int num_caps;
    int i = 0;

    FUNC4(&procamp_params, 0, sizeof(procamp_params));
    FUNC4(&procamp_caps, 0, sizeof(procamp_caps));

    num_caps = VAProcColorBalanceCount;
    vas = FUNC6(vpp_ctx->hwctx->display, vpp_ctx->va_context,
                                     VAProcFilterColorBalance, &procamp_caps, &num_caps);

    if (vas != VA_STATUS_SUCCESS) {
        FUNC1(avctx, AV_LOG_ERROR, "Failed to query procamp "
               "filter caps: %d (%s).\n", vas, FUNC5(vas));
        return FUNC0(EIO);
    }

    /* brightness */
    procamp_params[i].type   = VAProcFilterColorBalance;
    procamp_params[i].attrib = VAProcColorBalanceBrightness;
    procamp_params[i].value  = FUNC3(ctx->bright, BRIGHTNESS_MIN, BRIGHTNESS_MAX,
                                   procamp_caps[VAProcColorBalanceBrightness-1].range.min_value,
                                   procamp_caps[VAProcColorBalanceBrightness-1].range.max_value);
    i++;

    /* contrast */
    procamp_params[i].type   = VAProcFilterColorBalance;
    procamp_params[i].attrib = VAProcColorBalanceContrast;
    procamp_params[i].value  = FUNC3(ctx->contrast, CONTRAST_MIN, CONTRAST_MAX,
                                   procamp_caps[VAProcColorBalanceContrast-1].range.min_value,
                                   procamp_caps[VAProcColorBalanceContrast-1].range.max_value);
    i++;

    /* hue */
    procamp_params[i].type   = VAProcFilterColorBalance;
    procamp_params[i].attrib = VAProcColorBalanceHue;
    procamp_params[i].value  = FUNC3(ctx->hue, HUE_MIN, HUE_MAX,
                                   procamp_caps[VAProcColorBalanceHue-1].range.min_value,
                                   procamp_caps[VAProcColorBalanceHue-1].range.max_value);
    i++;

    /* saturation */
    procamp_params[i].type   = VAProcFilterColorBalance;
    procamp_params[i].attrib = VAProcColorBalanceSaturation;
    procamp_params[i].value  = FUNC3(ctx->saturation, SATURATION_MIN, SATURATION_MAX,
                                   procamp_caps[VAProcColorBalanceSaturation-1].range.min_value,
                                   procamp_caps[VAProcColorBalanceSaturation-1].range.max_value);
    i++;

    return FUNC2(avctx,
                                           VAProcFilterParameterBufferType,
                                           &procamp_params,
                                           sizeof(procamp_params[0]),
                                           i);
}