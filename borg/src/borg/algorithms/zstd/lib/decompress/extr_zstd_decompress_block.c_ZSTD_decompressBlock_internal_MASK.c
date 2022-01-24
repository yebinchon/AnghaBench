#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_longOffset_e ;
struct TYPE_8__ {unsigned long long windowSize; } ;
struct TYPE_9__ {int ddictIsCold; int /*<<< orphan*/  OFTptr; TYPE_1__ fParams; } ;
typedef  TYPE_2__ ZSTD_DCtx ;
typedef  scalar_t__ U32 ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int ADVANCED_SEQS ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 unsigned long long STREAM_ACCUMULATOR_MIN ; 
 size_t ZSTD_BLOCKSIZE_MAX ; 
 size_t FUNC4 (TYPE_2__*,void const*,size_t) ; 
 size_t FUNC5 (TYPE_2__*,int*,int /*<<< orphan*/  const*,size_t) ; 
 size_t FUNC6 (TYPE_2__*,void*,size_t,int /*<<< orphan*/  const*,size_t,int,int /*<<< orphan*/  const) ; 
 size_t FUNC7 (TYPE_2__*,void*,size_t,int /*<<< orphan*/  const*,size_t,int,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (size_t const) ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t
FUNC10(ZSTD_DCtx* dctx,
                              void* dst, size_t dstCapacity,
                        const void* src, size_t srcSize, const int frame)
{   /* blockType == blockCompressed */
    const BYTE* ip = (const BYTE*)src;
    /* isLongOffset must be true if there are long offsets.
     * Offsets are long if they are larger than 2^STREAM_ACCUMULATOR_MIN.
     * We don't expect that to be the case in 64-bit mode.
     * In block mode, window size is not known, so we have to be conservative.
     * (note: but it could be evaluated from current-lowLimit)
     */
    ZSTD_longOffset_e const isLongOffset = (ZSTD_longOffset_e)(FUNC2() && (!frame || (dctx->fParams.windowSize > (1ULL << STREAM_ACCUMULATOR_MIN))));
    FUNC0(5, "ZSTD_decompressBlock_internal (size : %u)", (U32)srcSize);

    if (srcSize >= ZSTD_BLOCKSIZE_MAX) return FUNC1(srcSize_wrong);

    /* Decode literals section */
    {   size_t const litCSize = FUNC4(dctx, src, srcSize);
        FUNC0(5, "ZSTD_decodeLiteralsBlock : %u", (U32)litCSize);
        if (FUNC9(litCSize)) return litCSize;
        ip += litCSize;
        srcSize -= litCSize;
    }

    /* Build Decoding Tables */
    {
        /* These macros control at build-time which decompressor implementation
         * we use. If neither is defined, we do some inspection and dispatch at
         * runtime.
         */
#if !defined(ZSTD_FORCE_DECOMPRESS_SEQUENCES_SHORT) && \
    !defined(ZSTD_FORCE_DECOMPRESS_SEQUENCES_LONG)
        int usePrefetchDecoder = dctx->ddictIsCold;
#endif
        int nbSeq;
        size_t const seqHSize = FUNC5(dctx, &nbSeq, ip, srcSize);
        if (FUNC9(seqHSize)) return seqHSize;
        ip += seqHSize;
        srcSize -= seqHSize;

#if !defined(ZSTD_FORCE_DECOMPRESS_SEQUENCES_SHORT) && \
    !defined(ZSTD_FORCE_DECOMPRESS_SEQUENCES_LONG)
        if ( !usePrefetchDecoder
          && (!frame || (dctx->fParams.windowSize > (1<<24)))
          && (nbSeq>ADVANCED_SEQS) ) {  /* could probably use a larger nbSeq limit */
            U32 const shareLongOffsets = FUNC8(dctx->OFTptr);
            U32 const minShare = FUNC3() ? 7 : 20; /* heuristic values, correspond to 2.73% and 7.81% */
            usePrefetchDecoder = (shareLongOffsets >= minShare);
        }
#endif

        dctx->ddictIsCold = 0;

#if !defined(ZSTD_FORCE_DECOMPRESS_SEQUENCES_SHORT) && \
    !defined(ZSTD_FORCE_DECOMPRESS_SEQUENCES_LONG)
        if (usePrefetchDecoder)
#endif
#ifndef ZSTD_FORCE_DECOMPRESS_SEQUENCES_SHORT
            return FUNC7(dctx, dst, dstCapacity, ip, srcSize, nbSeq, isLongOffset);
#endif

#ifndef ZSTD_FORCE_DECOMPRESS_SEQUENCES_LONG
        /* else */
        return FUNC6(dctx, dst, dstCapacity, ip, srcSize, nbSeq, isLongOffset);
#endif
    }
}