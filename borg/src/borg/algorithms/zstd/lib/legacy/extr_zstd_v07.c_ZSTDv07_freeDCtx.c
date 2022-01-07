
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int opaque; int (* customFree ) (int ,TYPE_2__*) ;} ;
struct TYPE_6__ {TYPE_1__ customMem; } ;
typedef TYPE_2__ ZSTDv07_DCtx ;


 int stub1 (int ,TYPE_2__*) ;

size_t ZSTDv07_freeDCtx(ZSTDv07_DCtx* dctx)
{
    if (dctx==((void*)0)) return 0;
    dctx->customMem.customFree(dctx->customMem.opaque, dctx);
    return 0;
}
