
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZBUFF_DCtx ;


 size_t ZSTD_freeDStream (int *) ;

size_t ZBUFF_freeDCtx(ZBUFF_DCtx* zbd)
{
    return ZSTD_freeDStream(zbd);
}
