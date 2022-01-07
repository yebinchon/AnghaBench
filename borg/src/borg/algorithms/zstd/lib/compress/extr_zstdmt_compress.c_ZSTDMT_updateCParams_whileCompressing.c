
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int windowLog; } ;
typedef TYPE_2__ ZSTD_compressionParameters ;
struct TYPE_11__ {int compressionLevel; } ;
typedef TYPE_3__ ZSTD_CCtx_params ;
struct TYPE_9__ {int compressionLevel; TYPE_2__ cParams; } ;
struct TYPE_12__ {TYPE_1__ params; } ;
typedef TYPE_4__ ZSTDMT_CCtx ;
typedef int U32 ;


 int DEBUGLOG (int,char*,int const) ;
 TYPE_2__ ZSTD_getCParamsFromCCtxParams (TYPE_3__ const*,int ,int ) ;

void ZSTDMT_updateCParams_whileCompressing(ZSTDMT_CCtx* mtctx, const ZSTD_CCtx_params* cctxParams)
{
    U32 const saved_wlog = mtctx->params.cParams.windowLog;
    int const compressionLevel = cctxParams->compressionLevel;
    DEBUGLOG(5, "ZSTDMT_updateCParams_whileCompressing (level:%i)",
                compressionLevel);
    mtctx->params.compressionLevel = compressionLevel;
    { ZSTD_compressionParameters cParams = ZSTD_getCParamsFromCCtxParams(cctxParams, 0, 0);
        cParams.windowLog = saved_wlog;
        mtctx->params.cParams = cParams;
    }
}
