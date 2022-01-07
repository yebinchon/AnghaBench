
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv03_Dctx ;
typedef int ZSTD_DCtx ;


 size_t ZSTD_nextSrcSizeToDecompress (int *) ;

size_t ZSTDv03_nextSrcSizeToDecompress(ZSTDv03_Dctx* dctx)
{
    return ZSTD_nextSrcSizeToDecompress((ZSTD_DCtx*)dctx);
}
