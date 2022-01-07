
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int params; } ;
typedef TYPE_1__ ZSTDMT_CCtx ;


 size_t ZSTDMT_initCStream_internal (TYPE_1__*,int *,int ,int ,int ,int ,unsigned long long) ;
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_dct_auto ;

size_t ZSTDMT_resetCStream(ZSTDMT_CCtx* mtctx, unsigned long long pledgedSrcSize)
{
    if (!pledgedSrcSize) pledgedSrcSize = ZSTD_CONTENTSIZE_UNKNOWN;
    return ZSTDMT_initCStream_internal(mtctx, ((void*)0), 0, ZSTD_dct_auto, 0, mtctx->params,
                                       pledgedSrcSize);
}
