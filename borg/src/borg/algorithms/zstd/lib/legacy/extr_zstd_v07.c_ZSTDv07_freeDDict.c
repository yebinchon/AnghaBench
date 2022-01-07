
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* ZSTDv07_freeFunction ) (void* const,TYPE_2__*) ;
struct TYPE_7__ {struct TYPE_7__* dict; TYPE_5__* refContext; } ;
typedef TYPE_2__ ZSTDv07_DDict ;
struct TYPE_6__ {void* opaque; int (* customFree ) (void* const,TYPE_2__*) ;} ;
struct TYPE_8__ {TYPE_1__ customMem; } ;


 int ZSTDv07_freeDCtx (TYPE_5__*) ;

size_t ZSTDv07_freeDDict(ZSTDv07_DDict* ddict)
{
    ZSTDv07_freeFunction const cFree = ddict->refContext->customMem.customFree;
    void* const opaque = ddict->refContext->customMem.opaque;
    ZSTDv07_freeDCtx(ddict->refContext);
    cFree(opaque, ddict->dict);
    cFree(opaque, ddict);
    return 0;
}
