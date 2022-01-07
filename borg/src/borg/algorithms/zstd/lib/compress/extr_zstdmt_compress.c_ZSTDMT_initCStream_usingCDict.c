
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ZSTD_frameParameters ;
typedef int ZSTD_CDict ;
struct TYPE_6__ {int fParams; int cParams; } ;
typedef TYPE_1__ ZSTD_CCtx_params ;
struct TYPE_7__ {TYPE_1__ params; } ;
typedef TYPE_2__ ZSTDMT_CCtx ;


 size_t ERROR (int ) ;
 size_t ZSTDMT_initCStream_internal (TYPE_2__*,int *,int ,int ,int const*,TYPE_1__,unsigned long long) ;
 int ZSTD_dct_auto ;
 int ZSTD_getCParamsFromCDict (int const*) ;
 int dictionary_wrong ;

size_t ZSTDMT_initCStream_usingCDict(ZSTDMT_CCtx* mtctx,
                               const ZSTD_CDict* cdict,
                                     ZSTD_frameParameters fParams,
                                     unsigned long long pledgedSrcSize)
{
    ZSTD_CCtx_params cctxParams = mtctx->params;
    if (cdict==((void*)0)) return ERROR(dictionary_wrong);
    cctxParams.cParams = ZSTD_getCParamsFromCDict(cdict);
    cctxParams.fParams = fParams;
    return ZSTDMT_initCStream_internal(mtctx, ((void*)0), 0 , ZSTD_dct_auto, cdict,
                                       cctxParams, pledgedSrcSize);
}
