
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc; scalar_t__ outEnd; scalar_t__ outStart; scalar_t__ inPos; scalar_t__ hPos; int stage; } ;
typedef TYPE_1__ ZBUFFv05_DCtx ;


 int ZBUFFv05ds_readHeader ;
 size_t ZSTDv05_decompressBegin_usingDict (int ,void const*,size_t) ;

size_t ZBUFFv05_decompressInitDictionary(ZBUFFv05_DCtx* zbc, const void* dict, size_t dictSize)
{
    zbc->stage = ZBUFFv05ds_readHeader;
    zbc->hPos = zbc->inPos = zbc->outStart = zbc->outEnd = 0;
    return ZSTDv05_decompressBegin_usingDict(zbc->zc, dict, dictSize);
}
