#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VdpStatus ;
struct TYPE_8__ {int /*<<< orphan*/  surf_destroy; int /*<<< orphan*/  surf_create; int /*<<< orphan*/  put_data; int /*<<< orphan*/  get_data; int /*<<< orphan*/  get_transfer_caps; } ;
typedef  TYPE_2__ VDPAUDeviceContext ;
struct TYPE_9__ {TYPE_1__* internal; int /*<<< orphan*/ * hwctx; } ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef  int /*<<< orphan*/  AVVDPAUDeviceContext ;
typedef  TYPE_3__ AVHWDeviceContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VDP_FUNC_ID_VIDEO_SURFACE_CREATE ; 
 int /*<<< orphan*/  VDP_FUNC_ID_VIDEO_SURFACE_DESTROY ; 
 int /*<<< orphan*/  VDP_FUNC_ID_VIDEO_SURFACE_GET_BITS_Y_CB_CR ; 
 int /*<<< orphan*/  VDP_FUNC_ID_VIDEO_SURFACE_PUT_BITS_Y_CB_CR ; 
 int /*<<< orphan*/  VDP_FUNC_ID_VIDEO_SURFACE_QUERY_GET_PUT_BITS_Y_CB_CR_CAPABILITIES ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC3(AVHWDeviceContext *ctx)
{
    AVVDPAUDeviceContext *hwctx = ctx->hwctx;
    VDPAUDeviceContext   *priv  = ctx->internal->priv;
    VdpStatus             err;
    int                   ret;

    FUNC0(VDP_FUNC_ID_VIDEO_SURFACE_QUERY_GET_PUT_BITS_Y_CB_CR_CAPABILITIES,
                 priv->get_transfer_caps);
    FUNC0(VDP_FUNC_ID_VIDEO_SURFACE_GET_BITS_Y_CB_CR, priv->get_data);
    FUNC0(VDP_FUNC_ID_VIDEO_SURFACE_PUT_BITS_Y_CB_CR, priv->put_data);
    FUNC0(VDP_FUNC_ID_VIDEO_SURFACE_CREATE,           priv->surf_create);
    FUNC0(VDP_FUNC_ID_VIDEO_SURFACE_DESTROY,          priv->surf_destroy);

    ret = FUNC2(ctx);
    if (ret < 0) {
        FUNC1(ctx, AV_LOG_ERROR, "Error querying the supported pixel formats\n");
        return ret;
    }

    return 0;
}