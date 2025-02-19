
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * base; } ;
struct TYPE_7__ {int hashLog; int minMatch; } ;
struct TYPE_6__ {int* hashTable; int nextToUpdate; TYPE_1__ window; TYPE_3__ cParams; } ;
typedef TYPE_2__ ZSTD_matchState_t ;
typedef scalar_t__ ZSTD_dictTableLoadMethod_e ;
typedef TYPE_3__ ZSTD_compressionParameters ;
typedef int U32 ;
typedef int BYTE ;


 int const* HASH_READ_SIZE ;
 scalar_t__ ZSTD_dtlm_fast ;
 size_t ZSTD_hashPtr (int const*,int const,int const) ;

void ZSTD_fillHashTable(ZSTD_matchState_t* ms,
                        void const* end, ZSTD_dictTableLoadMethod_e dtlm)
{
    const ZSTD_compressionParameters* const cParams = &ms->cParams;
    U32* const hashTable = ms->hashTable;
    U32 const hBits = cParams->hashLog;
    U32 const mls = cParams->minMatch;
    const BYTE* const base = ms->window.base;
    const BYTE* ip = base + ms->nextToUpdate;
    const BYTE* const iend = ((const BYTE*)end) - HASH_READ_SIZE;
    const U32 fastHashFillStep = 3;




    for ( ; ip + fastHashFillStep < iend + 2; ip += fastHashFillStep) {
        U32 const current = (U32)(ip - base);
        size_t const hash0 = ZSTD_hashPtr(ip, hBits, mls);
        hashTable[hash0] = current;
        if (dtlm == ZSTD_dtlm_fast) continue;

        { U32 p;
            for (p = 1; p < fastHashFillStep; ++p) {
                size_t const hash = ZSTD_hashPtr(ip + p, hBits, mls);
                if (hashTable[hash] == 0) {
                    hashTable[hash] = current + p;
    } } } }
}
