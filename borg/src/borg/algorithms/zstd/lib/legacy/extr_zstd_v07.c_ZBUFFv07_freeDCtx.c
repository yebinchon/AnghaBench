
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int opaque; int (* customFree ) (int ,TYPE_2__*) ;} ;
struct TYPE_8__ {TYPE_1__ customMem; struct TYPE_8__* outBuff; struct TYPE_8__* inBuff; int zd; } ;
typedef TYPE_2__ ZBUFFv07_DCtx ;


 int ZSTDv07_freeDCtx (int ) ;
 int stub1 (int ,TYPE_2__*) ;
 int stub2 (int ,TYPE_2__*) ;
 int stub3 (int ,TYPE_2__*) ;

size_t ZBUFFv07_freeDCtx(ZBUFFv07_DCtx* zbd)
{
    if (zbd==((void*)0)) return 0;
    ZSTDv07_freeDCtx(zbd->zd);
    if (zbd->inBuff) zbd->customMem.customFree(zbd->customMem.opaque, zbd->inBuff);
    if (zbd->outBuff) zbd->customMem.customFree(zbd->customMem.opaque, zbd->outBuff);
    zbd->customMem.customFree(zbd->customMem.opaque, zbd);
    return 0;
}
