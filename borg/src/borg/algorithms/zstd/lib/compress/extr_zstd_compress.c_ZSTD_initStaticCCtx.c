
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void ZSTD_compressedBlockState_t ;
struct TYPE_4__ {void* prevCBlock; void* nextCBlock; } ;
struct TYPE_5__ {size_t staticSize; size_t workSpaceSize; int bmi2; int * entropyWorkspace; TYPE_1__ blockState; void* workSpace; } ;
typedef TYPE_2__ ZSTD_CCtx ;
typedef int U32 ;


 int HUF_WORKSPACE_SIZE ;
 int ZSTD_cpuid () ;
 int ZSTD_cpuid_bmi2 (int ) ;
 int assert (int) ;
 int memset (void*,int ,size_t) ;

ZSTD_CCtx* ZSTD_initStaticCCtx(void *workspace, size_t workspaceSize)
{
    ZSTD_CCtx* const cctx = (ZSTD_CCtx*) workspace;
    if (workspaceSize <= sizeof(ZSTD_CCtx)) return ((void*)0);
    if ((size_t)workspace & 7) return ((void*)0);
    memset(workspace, 0, workspaceSize);
    cctx->staticSize = workspaceSize;
    cctx->workSpace = (void*)(cctx+1);
    cctx->workSpaceSize = workspaceSize - sizeof(ZSTD_CCtx);


    if (cctx->workSpaceSize < HUF_WORKSPACE_SIZE + 2 * sizeof(ZSTD_compressedBlockState_t)) return ((void*)0);
    assert(((size_t)cctx->workSpace & (sizeof(void*)-1)) == 0);
    cctx->blockState.prevCBlock = (ZSTD_compressedBlockState_t*)cctx->workSpace;
    cctx->blockState.nextCBlock = cctx->blockState.prevCBlock + 1;
    {
        void* const ptr = cctx->blockState.nextCBlock + 1;
        cctx->entropyWorkspace = (U32*)ptr;
    }
    cctx->bmi2 = ZSTD_cpuid_bmi2(ZSTD_cpuid());
    return cctx;
}
