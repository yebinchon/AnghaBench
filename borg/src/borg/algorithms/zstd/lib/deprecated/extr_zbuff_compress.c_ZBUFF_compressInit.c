
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZBUFF_CCtx ;


 size_t ZSTD_initCStream (int *,int) ;

size_t ZBUFF_compressInit(ZBUFF_CCtx* zbc, int compressionLevel)
{
    return ZSTD_initCStream(zbc, compressionLevel);
}
