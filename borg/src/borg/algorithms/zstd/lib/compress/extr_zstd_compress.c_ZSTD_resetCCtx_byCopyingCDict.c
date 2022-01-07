
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {unsigned int windowLog; scalar_t__ strategy; size_t hashLog; size_t chainLog; } ;
struct TYPE_17__ {size_t hashLog3; int loadedDictEnd; int nextToUpdate3; int nextToUpdate; int window; scalar_t__ hashTable3; int * hashTable; scalar_t__ chainTable; TYPE_5__ cParams; } ;
typedef TYPE_4__ ZSTD_matchState_t ;
typedef TYPE_5__ ZSTD_compressionParameters ;
typedef int ZSTD_buffered_policy_e ;
struct TYPE_19__ {int cBlockState; int dictID; TYPE_4__ matchState; } ;
typedef TYPE_6__ ZSTD_CDict ;
struct TYPE_20__ {TYPE_5__ cParams; } ;
typedef TYPE_7__ ZSTD_CCtx_params ;
struct TYPE_16__ {int * prevCBlock; TYPE_4__ matchState; } ;
struct TYPE_14__ {scalar_t__ strategy; size_t hashLog; size_t chainLog; } ;
struct TYPE_15__ {TYPE_1__ cParams; } ;
struct TYPE_21__ {TYPE_3__ blockState; int dictID; TYPE_2__ appliedParams; } ;
typedef TYPE_8__ ZSTD_CCtx ;
typedef int U64 ;
typedef int U32 ;


 int DEBUGLOG (int,char*) ;
 scalar_t__ ZSTD_fast ;
 int ZSTD_resetCCtx_internal (TYPE_8__*,TYPE_7__,int ,int ,int ) ;
 int ZSTDcrp_noMemset ;
 int assert (int) ;
 int memcpy (int *,int *,size_t const) ;
 int memset (scalar_t__,int ,size_t const) ;

__attribute__((used)) static size_t ZSTD_resetCCtx_byCopyingCDict(ZSTD_CCtx* cctx,
                            const ZSTD_CDict* cdict,
                            ZSTD_CCtx_params params,
                            U64 pledgedSrcSize,
                            ZSTD_buffered_policy_e zbuff)
{
    const ZSTD_compressionParameters *cdict_cParams = &cdict->matchState.cParams;

    DEBUGLOG(4, "copying dictionary into context");

    { unsigned const windowLog = params.cParams.windowLog;
        assert(windowLog != 0);

        params.cParams = *cdict_cParams;
        params.cParams.windowLog = windowLog;
        ZSTD_resetCCtx_internal(cctx, params, pledgedSrcSize,
                                ZSTDcrp_noMemset, zbuff);
        assert(cctx->appliedParams.cParams.strategy == cdict_cParams->strategy);
        assert(cctx->appliedParams.cParams.hashLog == cdict_cParams->hashLog);
        assert(cctx->appliedParams.cParams.chainLog == cdict_cParams->chainLog);
    }


    { size_t const chainSize = (cdict_cParams->strategy == ZSTD_fast) ? 0 : ((size_t)1 << cdict_cParams->chainLog);
        size_t const hSize = (size_t)1 << cdict_cParams->hashLog;
        size_t const tableSpace = (chainSize + hSize) * sizeof(U32);
        assert((U32*)cctx->blockState.matchState.chainTable == (U32*)cctx->blockState.matchState.hashTable + hSize);
        assert((U32*)cctx->blockState.matchState.hashTable3 == (U32*)cctx->blockState.matchState.chainTable + chainSize);
        assert((U32*)cdict->matchState.chainTable == (U32*)cdict->matchState.hashTable + hSize);
        assert((U32*)cdict->matchState.hashTable3 == (U32*)cdict->matchState.chainTable + chainSize);
        memcpy(cctx->blockState.matchState.hashTable, cdict->matchState.hashTable, tableSpace);
    }


    { size_t const h3Size = (size_t)1 << cctx->blockState.matchState.hashLog3;
        assert(cdict->matchState.hashLog3 == 0);
        memset(cctx->blockState.matchState.hashTable3, 0, h3Size * sizeof(U32));
    }


    { ZSTD_matchState_t const* srcMatchState = &cdict->matchState;
        ZSTD_matchState_t* dstMatchState = &cctx->blockState.matchState;
        dstMatchState->window = srcMatchState->window;
        dstMatchState->nextToUpdate = srcMatchState->nextToUpdate;
        dstMatchState->nextToUpdate3= srcMatchState->nextToUpdate3;
        dstMatchState->loadedDictEnd= srcMatchState->loadedDictEnd;
    }

    cctx->dictID = cdict->dictID;


    memcpy(cctx->blockState.prevCBlock, &cdict->cBlockState, sizeof(cdict->cBlockState));

    return 0;
}
