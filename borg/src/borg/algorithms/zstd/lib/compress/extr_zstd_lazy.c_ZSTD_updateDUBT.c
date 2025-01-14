
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dictLimit; int * base; } ;
struct TYPE_7__ {int hashLog; int chainLog; } ;
struct TYPE_6__ {int* hashTable; int* chainTable; int nextToUpdate; TYPE_1__ window; TYPE_3__ cParams; } ;
typedef TYPE_2__ ZSTD_matchState_t ;
typedef TYPE_3__ ZSTD_compressionParameters ;
typedef int U32 ;
typedef int BYTE ;


 int DEBUGLOG (int,char*,int,...) ;
 int ZSTD_DUBT_UNSORTED_MARK ;
 size_t ZSTD_hashPtr (int const* const,int const,int) ;
 int assert (int) ;

__attribute__((used)) static void
ZSTD_updateDUBT(ZSTD_matchState_t* ms,
                const BYTE* ip, const BYTE* iend,
                U32 mls)
{
    const ZSTD_compressionParameters* const cParams = &ms->cParams;
    U32* const hashTable = ms->hashTable;
    U32 const hashLog = cParams->hashLog;

    U32* const bt = ms->chainTable;
    U32 const btLog = cParams->chainLog - 1;
    U32 const btMask = (1 << btLog) - 1;

    const BYTE* const base = ms->window.base;
    U32 const target = (U32)(ip - base);
    U32 idx = ms->nextToUpdate;

    if (idx != target)
        DEBUGLOG(7, "ZSTD_updateDUBT, from %u to %u (dictLimit:%u)",
                    idx, target, ms->window.dictLimit);
    assert(ip + 8 <= iend);
    (void)iend;

    assert(idx >= ms->window.dictLimit);
    for ( ; idx < target ; idx++) {
        size_t const h = ZSTD_hashPtr(base + idx, hashLog, mls);
        U32 const matchIndex = hashTable[h];

        U32* const nextCandidatePtr = bt + 2*(idx&btMask);
        U32* const sortMarkPtr = nextCandidatePtr + 1;

        DEBUGLOG(8, "ZSTD_updateDUBT: insert %u", idx);
        hashTable[h] = idx;
        *nextCandidatePtr = matchIndex;
        *sortMarkPtr = ZSTD_DUBT_UNSORTED_MARK;
    }
    ms->nextToUpdate = target;
}
