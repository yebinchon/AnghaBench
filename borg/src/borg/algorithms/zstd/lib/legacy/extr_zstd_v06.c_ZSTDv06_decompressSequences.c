
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int sequence ;
struct TYPE_9__ {void* offset; scalar_t__ matchLength; scalar_t__ litLength; } ;
typedef TYPE_1__ seq_t ;
struct TYPE_10__ {int DStream; int stateML; int stateOffb; int stateLL; void** prevOffset; } ;
typedef TYPE_2__ seqState_t ;
struct TYPE_11__ {int litSize; int flagRepeatTable; scalar_t__ dictEnd; scalar_t__ vBase; scalar_t__ base; int * OffTable; int * MLTable; int * LLTable; int * litPtr; } ;
typedef TYPE_3__ ZSTDv06_DCtx ;
typedef size_t U32 ;
typedef int FSEv06_DTable ;
typedef int BYTE ;


 scalar_t__ BITv06_DStream_completed ;
 size_t BITv06_initDStream (int *,int const*,int) ;
 scalar_t__ BITv06_reloadDStream (int *) ;
 size_t ERROR (int ) ;
 scalar_t__ ERR_isError (size_t const) ;
 int FSEv06_initDState (int *,int *,int *) ;
 void* REPCODE_STARTVALUE ;
 size_t ZSTDv06_REP_INIT ;
 size_t ZSTDv06_decodeSeqHeaders (int*,int *,int *,int *,int ,int const*,size_t) ;
 int ZSTDv06_decodeSequence (TYPE_1__*,TYPE_2__*) ;
 size_t ZSTDv06_execSequence (int *,int * const,TYPE_1__,int const**,int const* const,int const* const,int const* const,int const* const) ;
 scalar_t__ ZSTDv06_isError (size_t const) ;
 int corruption_detected ;
 int dstSize_tooSmall ;
 int memcpy (int *,int const*,size_t const) ;
 int memset (TYPE_1__*,int ,int) ;
 int printf (char*,size_t,size_t,size_t,size_t) ;

__attribute__((used)) static size_t ZSTDv06_decompressSequences(
                               ZSTDv06_DCtx* dctx,
                               void* dst, size_t maxDstSize,
                         const void* seqStart, size_t seqSize)
{
    const BYTE* ip = (const BYTE*)seqStart;
    const BYTE* const iend = ip + seqSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* const oend = ostart + maxDstSize;
    BYTE* op = ostart;
    const BYTE* litPtr = dctx->litPtr;
    const BYTE* const litEnd = litPtr + dctx->litSize;
    FSEv06_DTable* DTableLL = dctx->LLTable;
    FSEv06_DTable* DTableML = dctx->MLTable;
    FSEv06_DTable* DTableOffb = dctx->OffTable;
    const BYTE* const base = (const BYTE*) (dctx->base);
    const BYTE* const vBase = (const BYTE*) (dctx->vBase);
    const BYTE* const dictEnd = (const BYTE*) (dctx->dictEnd);
    int nbSeq;


    { size_t const seqHSize = ZSTDv06_decodeSeqHeaders(&nbSeq, DTableLL, DTableML, DTableOffb, dctx->flagRepeatTable, ip, seqSize);
        if (ZSTDv06_isError(seqHSize)) return seqHSize;
        ip += seqHSize;
        dctx->flagRepeatTable = 0;
    }


    if (nbSeq) {
        seq_t sequence;
        seqState_t seqState;

        memset(&sequence, 0, sizeof(sequence));
        sequence.offset = REPCODE_STARTVALUE;
        { U32 i; for (i=0; i<ZSTDv06_REP_INIT; i++) seqState.prevOffset[i] = REPCODE_STARTVALUE; }
        { size_t const errorCode = BITv06_initDStream(&(seqState.DStream), ip, iend-ip);
          if (ERR_isError(errorCode)) return ERROR(corruption_detected); }
        FSEv06_initDState(&(seqState.stateLL), &(seqState.DStream), DTableLL);
        FSEv06_initDState(&(seqState.stateOffb), &(seqState.DStream), DTableOffb);
        FSEv06_initDState(&(seqState.stateML), &(seqState.DStream), DTableML);

        for ( ; (BITv06_reloadDStream(&(seqState.DStream)) <= BITv06_DStream_completed) && nbSeq ; ) {
            nbSeq--;
            ZSTDv06_decodeSequence(&sequence, &seqState);
            { size_t const oneSeqSize = ZSTDv06_execSequence(op, oend, sequence, &litPtr, litEnd, base, vBase, dictEnd);
                if (ZSTDv06_isError(oneSeqSize)) return oneSeqSize;
                op += oneSeqSize;
        } }


        if (nbSeq) return ERROR(corruption_detected);
    }


    { size_t const lastLLSize = litEnd - litPtr;
        if (litPtr > litEnd) return ERROR(corruption_detected);
        if (op+lastLLSize > oend) return ERROR(dstSize_tooSmall);
        memcpy(op, litPtr, lastLLSize);
        op += lastLLSize;
    }

    return op-ostart;
}
