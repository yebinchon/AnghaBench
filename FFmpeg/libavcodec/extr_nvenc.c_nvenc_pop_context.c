
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* priv_data; } ;
struct TYPE_7__ {TYPE_1__* cuda_dl; } ;
struct TYPE_8__ {scalar_t__ d3d11_device; TYPE_2__ nvenc_dload_funcs; } ;
struct TYPE_6__ {int (* cuCtxPopCurrent ) (int *) ;} ;
typedef TYPE_2__ NvencDynLoadFunctions ;
typedef TYPE_3__ NvencContext ;
typedef int CUcontext ;
typedef TYPE_4__ AVCodecContext ;


 int CHECK_CU (int ) ;
 int stub1 (int *) ;

__attribute__((used)) static int nvenc_pop_context(AVCodecContext *avctx)
{
    NvencContext *ctx = avctx->priv_data;
    NvencDynLoadFunctions *dl_fn = &ctx->nvenc_dload_funcs;
    CUcontext dummy;

    if (ctx->d3d11_device)
        return 0;

    return CHECK_CU(dl_fn->cuda_dl->cuCtxPopCurrent(&dummy));
}
