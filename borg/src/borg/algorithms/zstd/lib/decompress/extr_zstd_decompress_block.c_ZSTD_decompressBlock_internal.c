
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ZSTD_longOffset_e ;
struct TYPE_8__ {unsigned long long windowSize; } ;
struct TYPE_9__ {int ddictIsCold; int OFTptr; TYPE_1__ fParams; } ;
typedef TYPE_2__ ZSTD_DCtx ;
typedef scalar_t__ U32 ;
typedef int BYTE ;


 int ADVANCED_SEQS ;
 int DEBUGLOG (int,char*,scalar_t__) ;
 size_t ERROR (int ) ;
 scalar_t__ MEM_32bits () ;
 scalar_t__ MEM_64bits () ;
 unsigned long long STREAM_ACCUMULATOR_MIN ;
 size_t ZSTD_BLOCKSIZE_MAX ;
 size_t ZSTD_decodeLiteralsBlock (TYPE_2__*,void const*,size_t) ;
 size_t ZSTD_decodeSeqHeaders (TYPE_2__*,int*,int const*,size_t) ;
 size_t ZSTD_decompressSequences (TYPE_2__*,void*,size_t,int const*,size_t,int,int const) ;
 size_t ZSTD_decompressSequencesLong (TYPE_2__*,void*,size_t,int const*,size_t,int,int const) ;
 scalar_t__ ZSTD_getLongOffsetsShare (int ) ;
 scalar_t__ ZSTD_isError (size_t const) ;
 int srcSize_wrong ;

size_t
ZSTD_decompressBlock_internal(ZSTD_DCtx* dctx,
                              void* dst, size_t dstCapacity,
                        const void* src, size_t srcSize, const int frame)
{
    const BYTE* ip = (const BYTE*)src;






    ZSTD_longOffset_e const isLongOffset = (ZSTD_longOffset_e)(MEM_32bits() && (!frame || (dctx->fParams.windowSize > (1ULL << STREAM_ACCUMULATOR_MIN))));
    DEBUGLOG(5, "ZSTD_decompressBlock_internal (size : %u)", (U32)srcSize);

    if (srcSize >= ZSTD_BLOCKSIZE_MAX) return ERROR(srcSize_wrong);


    { size_t const litCSize = ZSTD_decodeLiteralsBlock(dctx, src, srcSize);
        DEBUGLOG(5, "ZSTD_decodeLiteralsBlock : %u", (U32)litCSize);
        if (ZSTD_isError(litCSize)) return litCSize;
        ip += litCSize;
        srcSize -= litCSize;
    }


    {






        int usePrefetchDecoder = dctx->ddictIsCold;

        int nbSeq;
        size_t const seqHSize = ZSTD_decodeSeqHeaders(dctx, &nbSeq, ip, srcSize);
        if (ZSTD_isError(seqHSize)) return seqHSize;
        ip += seqHSize;
        srcSize -= seqHSize;



        if ( !usePrefetchDecoder
          && (!frame || (dctx->fParams.windowSize > (1<<24)))
          && (nbSeq>ADVANCED_SEQS) ) {
            U32 const shareLongOffsets = ZSTD_getLongOffsetsShare(dctx->OFTptr);
            U32 const minShare = MEM_64bits() ? 7 : 20;
            usePrefetchDecoder = (shareLongOffsets >= minShare);
        }


        dctx->ddictIsCold = 0;



        if (usePrefetchDecoder)


            return ZSTD_decompressSequencesLong(dctx, dst, dstCapacity, ip, srcSize, nbSeq, isLongOffset);




        return ZSTD_decompressSequences(dctx, dst, dstCapacity, ip, srcSize, nbSeq, isLongOffset);

    }
}
