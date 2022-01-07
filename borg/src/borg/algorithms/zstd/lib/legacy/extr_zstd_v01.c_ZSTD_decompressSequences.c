
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sequence ;
typedef int seq_t ;
struct TYPE_4__ {int prevOffset; int DStream; int stateML; int stateOffb; int stateLL; int const* dumpsEnd; int const* dumps; } ;
typedef TYPE_1__ seqState_t ;
struct TYPE_5__ {scalar_t__ base; int * OffTable; int * MLTable; int * LLTable; } ;
typedef TYPE_2__ dctx_t ;
typedef int U32 ;
typedef int const BYTE ;


 size_t ERROR (int ) ;
 scalar_t__ FSE_DStream_completed ;
 int FSE_endOfDStream (int *) ;
 int FSE_initDState (int *,int *,int *) ;
 size_t FSE_initDStream (int *,int const*,int) ;
 scalar_t__ FSE_isError (size_t) ;
 scalar_t__ FSE_reloadDStream (int *) ;
 int ZSTD_decodeSequence (int *,TYPE_1__*) ;
 size_t ZSTD_execSequence (int const*,int ,int const**,int const* const,int const* const,int const* const) ;
 size_t ZSTDv01_decodeSeqHeaders (int*,int const**,size_t*,int *,int *,int *,int const*,int) ;
 scalar_t__ ZSTDv01_isError (size_t) ;
 int corruption_detected ;
 int dstSize_tooSmall ;
 int memmove (int const*,int const*,size_t) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static size_t ZSTD_decompressSequences(
                               void* ctx,
                               void* dst, size_t maxDstSize,
                         const void* seqStart, size_t seqSize,
                         const BYTE* litStart, size_t litSize)
{
    dctx_t* dctx = (dctx_t*)ctx;
    const BYTE* ip = (const BYTE*)seqStart;
    const BYTE* const iend = ip + seqSize;
    BYTE* const ostart = (BYTE* const)dst;
    BYTE* op = ostart;
    BYTE* const oend = ostart + maxDstSize;
    size_t errorCode, dumpsLength;
    const BYTE* litPtr = litStart;
    const BYTE* const litEnd = litStart + litSize;
    int nbSeq;
    const BYTE* dumps;
    U32* DTableLL = dctx->LLTable;
    U32* DTableML = dctx->MLTable;
    U32* DTableOffb = dctx->OffTable;
    BYTE* const base = (BYTE*) (dctx->base);


    errorCode = ZSTDv01_decodeSeqHeaders(&nbSeq, &dumps, &dumpsLength,
                                      DTableLL, DTableML, DTableOffb,
                                      ip, iend-ip);
    if (ZSTDv01_isError(errorCode)) return errorCode;
    ip += errorCode;


    {
        seq_t sequence;
        seqState_t seqState;

        memset(&sequence, 0, sizeof(sequence));
        seqState.dumps = dumps;
        seqState.dumpsEnd = dumps + dumpsLength;
        seqState.prevOffset = 1;
        errorCode = FSE_initDStream(&(seqState.DStream), ip, iend-ip);
        if (FSE_isError(errorCode)) return ERROR(corruption_detected);
        FSE_initDState(&(seqState.stateLL), &(seqState.DStream), DTableLL);
        FSE_initDState(&(seqState.stateOffb), &(seqState.DStream), DTableOffb);
        FSE_initDState(&(seqState.stateML), &(seqState.DStream), DTableML);

        for ( ; (FSE_reloadDStream(&(seqState.DStream)) <= FSE_DStream_completed) && (nbSeq>0) ; )
        {
            size_t oneSeqSize;
            nbSeq--;
            ZSTD_decodeSequence(&sequence, &seqState);
            oneSeqSize = ZSTD_execSequence(op, sequence, &litPtr, litEnd, base, oend);
            if (ZSTDv01_isError(oneSeqSize)) return oneSeqSize;
            op += oneSeqSize;
        }


        if ( !FSE_endOfDStream(&(seqState.DStream)) ) return ERROR(corruption_detected);
        if (nbSeq<0) return ERROR(corruption_detected);


        {
            size_t lastLLSize = litEnd - litPtr;
            if (op+lastLLSize > oend) return ERROR(dstSize_tooSmall);
            if (op != litPtr) memmove(op, litPtr, lastLLSize);
            op += lastLLSize;
        }
    }

    return op-ostart;
}
