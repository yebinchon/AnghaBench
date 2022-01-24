#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VdpStatus ;
typedef  scalar_t__ VdpBool ;
struct TYPE_10__ {scalar_t__ pix_fmt; int /*<<< orphan*/  vdpau_fmt; } ;
typedef  TYPE_2__ VDPAUPixFmtMap ;
struct TYPE_11__ {scalar_t__** pix_fmts; scalar_t__ (* get_transfer_caps ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ;int* nb_pix_fmts; } ;
typedef  TYPE_3__ VDPAUDeviceContext ;
struct TYPE_14__ {int /*<<< orphan*/  chroma_type; TYPE_2__* map; } ;
struct TYPE_13__ {TYPE_1__* internal; TYPE_4__* hwctx; } ;
struct TYPE_12__ {int /*<<< orphan*/  device; } ;
struct TYPE_9__ {TYPE_3__* priv; } ;
typedef  TYPE_4__ AVVDPAUDeviceContext ;
typedef  TYPE_5__ AVHWDeviceContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (scalar_t__**) ; 
 scalar_t__ VDP_STATUS_OK ; 
 scalar_t__* FUNC2 (int,int) ; 
 int FUNC3 (TYPE_2__ const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 TYPE_6__* vdpau_pix_fmts ; 

__attribute__((used)) static int FUNC5(AVHWDeviceContext *ctx)
{
    AVVDPAUDeviceContext *hwctx = ctx->hwctx;
    VDPAUDeviceContext    *priv = ctx->internal->priv;
    int i;

    for (i = 0; i < FUNC1(priv->pix_fmts); i++) {
        const VDPAUPixFmtMap *map = vdpau_pix_fmts[i].map;
        int nb_pix_fmts;

        nb_pix_fmts = FUNC3(map);
        priv->pix_fmts[i] = FUNC2(nb_pix_fmts + 1, sizeof(*priv->pix_fmts[i]));
        if (!priv->pix_fmts[i])
            return FUNC0(ENOMEM);

        nb_pix_fmts = 0;
        while (map->pix_fmt != AV_PIX_FMT_NONE) {
            VdpBool supported;
            VdpStatus err = priv->get_transfer_caps(hwctx->device, vdpau_pix_fmts[i].chroma_type,
                                                    map->vdpau_fmt, &supported);
            if (err == VDP_STATUS_OK && supported)
                priv->pix_fmts[i][nb_pix_fmts++] = map->pix_fmt;
            map++;
        }
        priv->pix_fmts[i][nb_pix_fmts++] = AV_PIX_FMT_NONE;
        priv->nb_pix_fmts[i]             = nb_pix_fmts;
    }

    return 0;
}