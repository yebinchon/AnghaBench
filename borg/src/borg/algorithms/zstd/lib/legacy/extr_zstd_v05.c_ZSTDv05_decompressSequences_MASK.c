#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sequence ;
struct TYPE_9__ {void* offset; } ;
typedef  TYPE_1__ seq_t ;
struct TYPE_10__ {int /*<<< orphan*/  DStream; int /*<<< orphan*/  stateML; int /*<<< orphan*/  stateOffb; int /*<<< orphan*/  stateLL; void* prevOffset; int /*<<< orphan*/  const* dumpsEnd; int /*<<< orphan*/  const* dumps; } ;
typedef  TYPE_2__ seqState_t ;
struct TYPE_11__ {int litSize; unsigned int* LLTable; unsigned int* MLTable; unsigned int* OffTable; int /*<<< orphan*/  flagStaticTables; scalar_t__ dictEnd; scalar_t__ vBase; scalar_t__ base; int /*<<< orphan*/ * litPtr; } ;
typedef  TYPE_3__ ZSTDv05_DCtx ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ BITv05_DStream_completed ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*) ; 
 void* REPCODE_STARTVALUE ; 
 size_t FUNC5 (int*,int /*<<< orphan*/  const**,size_t*,unsigned int*,unsigned int*,unsigned int*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 size_t FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,TYPE_1__,int /*<<< orphan*/  const**,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const* const) ; 
 scalar_t__ FUNC8 (size_t) ; 
 int /*<<< orphan*/  corruption_detected ; 
 int /*<<< orphan*/  dstSize_tooSmall ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static size_t FUNC11(
                               ZSTDv05_DCtx* dctx,
                               void* dst, size_t maxDstSize,
                         const void* seqStart, size_t seqSize)
{
    const BYTE* ip = (const BYTE*)seqStart;
    const BYTE* const iend = ip + seqSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + maxDstSize;
    size_t errorCode, dumpsLength=0;
    const BYTE* litPtr = dctx->litPtr;
    const BYTE* const litEnd = litPtr + dctx->litSize;
    int nbSeq=0;
    const BYTE* dumps = NULL;
    unsigned* DTableLL = dctx->LLTable;
    unsigned* DTableML = dctx->MLTable;
    unsigned* DTableOffb = dctx->OffTable;
    const BYTE* const base = (const BYTE*) (dctx->base);
    const BYTE* const vBase = (const BYTE*) (dctx->vBase);
    const BYTE* const dictEnd = (const BYTE*) (dctx->dictEnd);

    /* Build Decoding Tables */
    errorCode = FUNC5(&nbSeq, &dumps, &dumpsLength,
                                      DTableLL, DTableML, DTableOffb,
                                      ip, seqSize, dctx->flagStaticTables);
    if (FUNC8(errorCode)) return errorCode;
    ip += errorCode;

    /* Regen sequences */
    if (nbSeq) {
        seq_t sequence;
        seqState_t seqState;

        FUNC10(&sequence, 0, sizeof(sequence));
        sequence.offset = REPCODE_STARTVALUE;
        seqState.dumps = dumps;
        seqState.dumpsEnd = dumps + dumpsLength;
        seqState.prevOffset = REPCODE_STARTVALUE;
        errorCode = FUNC0(&(seqState.DStream), ip, iend-ip);
        if (FUNC3(errorCode)) return FUNC2(corruption_detected);
        FUNC4(&(seqState.stateLL), &(seqState.DStream), DTableLL);
        FUNC4(&(seqState.stateOffb), &(seqState.DStream), DTableOffb);
        FUNC4(&(seqState.stateML), &(seqState.DStream), DTableML);

        for ( ; (FUNC1(&(seqState.DStream)) <= BITv05_DStream_completed) && nbSeq ; ) {
            size_t oneSeqSize;
            nbSeq--;
            FUNC6(&sequence, &seqState);
            oneSeqSize = FUNC7(op, oend, sequence, &litPtr, litEnd, base, vBase, dictEnd);
            if (FUNC8(oneSeqSize)) return oneSeqSize;
            op += oneSeqSize;
        }

        /* check if reached exact end */
        if (nbSeq) return FUNC2(corruption_detected);
    }

    /* last literal segment */
    {
        size_t lastLLSize = litEnd - litPtr;
        if (litPtr > litEnd) return FUNC2(corruption_detected);   /* too many literals already used */
        if (op+lastLLSize > oend) return FUNC2(dstSize_tooSmall);
        FUNC9(op, litPtr, lastLLSize);
        op += lastLLSize;
    }

    return op-ostart;
}