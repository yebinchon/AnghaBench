
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDMT_CCtx ;


 int * ZSTDMT_createCCtx_advanced (unsigned int,int ) ;
 int ZSTD_defaultCMem ;

ZSTDMT_CCtx* ZSTDMT_createCCtx(unsigned nbWorkers)
{
    return ZSTDMT_createCCtx_advanced(nbWorkers, ZSTD_defaultCMem);
}
