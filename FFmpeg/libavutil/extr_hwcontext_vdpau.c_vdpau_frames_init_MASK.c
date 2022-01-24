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
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VdpVideoSurface ;
struct TYPE_15__ {int chroma_idx; int nb_pix_fmts; int /*<<< orphan*/  put_data; int /*<<< orphan*/  get_data; int /*<<< orphan*/  pix_fmts; int /*<<< orphan*/  chroma_type; } ;
typedef  TYPE_4__ VDPAUFramesContext ;
struct TYPE_16__ {int* nb_pix_fmts; int /*<<< orphan*/  put_data; int /*<<< orphan*/  get_data; int /*<<< orphan*/ * pix_fmts; } ;
typedef  TYPE_5__ VDPAUDeviceContext ;
struct TYPE_18__ {scalar_t__ frames_sw_format; int /*<<< orphan*/  chroma_type; } ;
struct TYPE_17__ {scalar_t__ sw_format; TYPE_3__* internal; int /*<<< orphan*/  pool; TYPE_2__* device_ctx; } ;
struct TYPE_14__ {int /*<<< orphan*/  pool_internal; TYPE_4__* priv; } ;
struct TYPE_13__ {TYPE_1__* internal; } ;
struct TYPE_12__ {TYPE_5__* priv; } ;
typedef  TYPE_6__ AVHWFramesContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_7__* vdpau_pix_fmts ; 
 int /*<<< orphan*/  vdpau_pool_alloc ; 

__attribute__((used)) static int FUNC5(AVHWFramesContext *ctx)
{
    VDPAUDeviceContext *device_priv = ctx->device_ctx->internal->priv;
    VDPAUFramesContext        *priv = ctx->internal->priv;

    int i;

    for (i = 0; i < FUNC1(vdpau_pix_fmts); i++) {
        if (vdpau_pix_fmts[i].frames_sw_format == ctx->sw_format) {
            priv->chroma_type = vdpau_pix_fmts[i].chroma_type;
            priv->chroma_idx  = i;
            priv->pix_fmts    = device_priv->pix_fmts[i];
            priv->nb_pix_fmts = device_priv->nb_pix_fmts[i];
            break;
        }
    }
    if (priv->nb_pix_fmts < 2) {
        FUNC4(ctx, AV_LOG_ERROR, "Unsupported sw format: %s\n",
               FUNC3(ctx->sw_format));
        return FUNC0(ENOSYS);
    }

    if (!ctx->pool) {
        ctx->internal->pool_internal = FUNC2(sizeof(VdpVideoSurface), ctx,
                                                            vdpau_pool_alloc, NULL);
        if (!ctx->internal->pool_internal)
            return FUNC0(ENOMEM);
    }

    priv->get_data = device_priv->get_data;
    priv->put_data = device_priv->put_data;

    return 0;
}