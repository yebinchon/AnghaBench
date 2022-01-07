
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int fParams; int cParams; } ;
typedef TYPE_1__ ZSTD_parameters ;
typedef int ZSTD_CDict ;
struct TYPE_9__ {int overlapLog; int fParams; int cParams; } ;
typedef TYPE_2__ ZSTD_CCtx_params ;
struct TYPE_10__ {TYPE_2__ params; } ;
typedef TYPE_3__ ZSTDMT_CCtx ;


 size_t ZSTDMT_compress_advanced_internal (TYPE_3__*,void*,size_t,void const*,size_t,int const*,TYPE_2__) ;
 int ZSTD_OVERLAPLOG_MAX ;
 int ZSTD_OVERLAPLOG_MIN ;
 int assert (int) ;

size_t ZSTDMT_compress_advanced(ZSTDMT_CCtx* mtctx,
                                void* dst, size_t dstCapacity,
                          const void* src, size_t srcSize,
                          const ZSTD_CDict* cdict,
                                ZSTD_parameters params,
                                int overlapLog)
{
    ZSTD_CCtx_params cctxParams = mtctx->params;
    cctxParams.cParams = params.cParams;
    cctxParams.fParams = params.fParams;
    assert(ZSTD_OVERLAPLOG_MIN <= overlapLog && overlapLog <= ZSTD_OVERLAPLOG_MAX);
    cctxParams.overlapLog = overlapLog;
    return ZSTDMT_compress_advanced_internal(mtctx,
                                             dst, dstCapacity,
                                             src, srcSize,
                                             cdict, cctxParams);
}
