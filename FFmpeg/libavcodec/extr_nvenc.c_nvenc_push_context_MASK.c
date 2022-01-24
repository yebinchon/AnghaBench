#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* priv_data; } ;
struct TYPE_7__ {TYPE_1__* cuda_dl; } ;
struct TYPE_8__ {int /*<<< orphan*/  cu_context; scalar_t__ d3d11_device; TYPE_2__ nvenc_dload_funcs; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* cuCtxPushCurrent ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ NvencDynLoadFunctions ;
typedef  TYPE_3__ NvencContext ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(AVCodecContext *avctx)
{
    NvencContext *ctx            = avctx->priv_data;
    NvencDynLoadFunctions *dl_fn = &ctx->nvenc_dload_funcs;

    if (ctx->d3d11_device)
        return 0;

    return FUNC0(dl_fn->cuda_dl->cuCtxPushCurrent(ctx->cu_context));
}