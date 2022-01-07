
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZBUFFv07_DCtx ;


 size_t ZBUFFv07_decompressInitDictionary (int *,int *,int ) ;

size_t ZBUFFv07_decompressInit(ZBUFFv07_DCtx* zbd)
{
    return ZBUFFv07_decompressInitDictionary(zbd, ((void*)0), 0);
}
