
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_dictLoadMethod_e ;
typedef int ZSTD_dictContentType_e ;
struct TYPE_3__ {scalar_t__ streamStage; int * ddictLocal; int * ddict; int customMem; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 size_t ERROR (int ) ;
 int * ZSTD_createDDict_advanced (void const*,size_t,int ,int ,int ) ;
 int ZSTD_freeDDict (int *) ;
 int memory_allocation ;
 int stage_wrong ;
 scalar_t__ zdss_init ;

size_t ZSTD_DCtx_loadDictionary_advanced(ZSTD_DCtx* dctx,
                                   const void* dict, size_t dictSize,
                                         ZSTD_dictLoadMethod_e dictLoadMethod,
                                         ZSTD_dictContentType_e dictContentType)
{
    if (dctx->streamStage != zdss_init) return ERROR(stage_wrong);
    ZSTD_freeDDict(dctx->ddictLocal);
    if (dict && dictSize >= 8) {
        dctx->ddictLocal = ZSTD_createDDict_advanced(dict, dictSize, dictLoadMethod, dictContentType, dctx->customMem);
        if (dctx->ddictLocal == ((void*)0)) return ERROR(memory_allocation);
    } else {
        dctx->ddictLocal = ((void*)0);
    }
    dctx->ddict = dctx->ddictLocal;
    return 0;
}
