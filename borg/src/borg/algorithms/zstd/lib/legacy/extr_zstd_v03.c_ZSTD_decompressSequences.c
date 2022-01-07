
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sequence ;
struct TYPE_8__ {int offset; } ;
typedef TYPE_1__ seq_t ;
struct TYPE_9__ {int prevOffset; int DStream; int stateML; int stateOffb; int stateLL; int const* dumpsEnd; int const* dumps; } ;
typedef TYPE_2__ seqState_t ;
struct TYPE_10__ {int litSize; scalar_t__ base; int * OffTable; int * MLTable; int * LLTable; int const* litPtr; } ;
typedef TYPE_3__ ZSTD_DCtx ;
typedef int U32 ;
typedef int const BYTE ;


 scalar_t__ BIT_DStream_completed ;
 int BIT_endOfDStream (int *) ;
 size_t BIT_initDStream (int *,int const*,int) ;
 scalar_t__ BIT_reloadDStream (int *) ;
 size_t ERROR (int ) ;
 scalar_t__ ERR_isError (size_t) ;
 int FSE_initDState (int *,int *,int *) ;
 size_t ZSTD_decodeSeqHeaders (int*,int const**,size_t*,int *,int *,int *,int const*,int) ;
 int ZSTD_decodeSequence (TYPE_1__*,TYPE_2__*) ;
 size_t ZSTD_execSequence (int const*,TYPE_1__,int const**,int const* const,int const* const,int const* const) ;
 scalar_t__ ZSTD_isError (size_t) ;
 int corruption_detected ;
 int dstSize_tooSmall ;
 int memmove (int const*,int const*,size_t) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static size_t ZSTD_decompressSequences(
                               void* ctx,
                               void* dst, size_t maxDstSize,
                         const void* seqStart, size_t seqSize)
{
    ZSTD_DCtx* dctx = (ZSTD_DCtx*)ctx;
    const BYTE* ip = (const BYTE*)seqStart;
    const BYTE* const iend = ip + seqSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + maxDstSize;
    size_t errorCode, dumpsLength;
    const BYTE* litPtr = dctx->litPtr;
    const BYTE* const litEnd = litPtr + dctx->litSize;
    int nbSeq;
    const BYTE* dumps;
    U32* DTableLL = dctx->LLTable;
    U32* DTableML = dctx->MLTable;
    U32* DTableOffb = dctx->OffTable;
    BYTE* const base = (BYTE*) (dctx->base);


    errorCode = ZSTD_decodeSeqHeaders(&nbSeq, &dumps, &dumpsLength,
                                      DTableLL, DTableML, DTableOffb,
                                      ip, iend-ip);
    if (ZSTD_isError(errorCode)) return errorCode;
    ip += errorCode;


    {
        seq_t sequence;
        seqState_t seqState;

        memset(&sequence, 0, sizeof(sequence));
        seqState.dumps = dumps;
        seqState.dumpsEnd = dumps + dumpsLength;
        seqState.prevOffset = sequence.offset = 4;
        errorCode = BIT_initDStream(&(seqState.DStream), ip, iend-ip);
        if (ERR_isError(errorCode)) return ERROR(corruption_detected);
        FSE_initDState(&(seqState.stateLL), &(seqState.DStream), DTableLL);
        FSE_initDState(&(seqState.stateOffb), &(seqState.DStream), DTableOffb);
        FSE_initDState(&(seqState.stateML), &(seqState.DStream), DTableML);

        for ( ; (BIT_reloadDStream(&(seqState.DStream)) <= BIT_DStream_completed) && (nbSeq>0) ; )
        {
            size_t oneSeqSize;
            nbSeq--;
            ZSTD_decodeSequence(&sequence, &seqState);
            oneSeqSize = ZSTD_execSequence(op, sequence, &litPtr, litEnd, base, oend);
            if (ZSTD_isError(oneSeqSize)) return oneSeqSize;
            op += oneSeqSize;
        }


        if ( !BIT_endOfDStream(&(seqState.DStream)) ) return ERROR(corruption_detected);
        if (nbSeq<0) return ERROR(corruption_detected);


        {
            size_t lastLLSize = litEnd - litPtr;
            if (litPtr > litEnd) return ERROR(corruption_detected);
            if (op+lastLLSize > oend) return ERROR(dstSize_tooSmall);
            if (op != litPtr) memmove(op, litPtr, lastLLSize);
            op += lastLLSize;
        }
    }

    return op-ostart;
}
