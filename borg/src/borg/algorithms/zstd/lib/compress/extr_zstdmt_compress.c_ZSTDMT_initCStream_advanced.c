
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int fParams; int cParams; } ;
typedef TYPE_1__ ZSTD_parameters ;
struct TYPE_9__ {int fParams; int cParams; } ;
typedef TYPE_2__ ZSTD_CCtx_params ;
struct TYPE_10__ {TYPE_2__ params; } ;
typedef TYPE_3__ ZSTDMT_CCtx ;
typedef int U32 ;


 int DEBUGLOG (int,char*,int ) ;
 size_t ZSTDMT_initCStream_internal (TYPE_3__*,void const*,size_t,int ,int *,TYPE_2__,unsigned long long) ;
 int ZSTD_dct_auto ;

size_t ZSTDMT_initCStream_advanced(ZSTDMT_CCtx* mtctx,
                             const void* dict, size_t dictSize,
                                   ZSTD_parameters params,
                                   unsigned long long pledgedSrcSize)
{
    ZSTD_CCtx_params cctxParams = mtctx->params;
    DEBUGLOG(4, "ZSTDMT_initCStream_advanced (pledgedSrcSize=%u)", (U32)pledgedSrcSize);
    cctxParams.cParams = params.cParams;
    cctxParams.fParams = params.fParams;
    return ZSTDMT_initCStream_internal(mtctx, dict, dictSize, ZSTD_dct_auto, ((void*)0),
                                       cctxParams, pledgedSrcSize);
}
