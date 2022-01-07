
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int tableLog; } ;
typedef int HUFv07_DTable ;
typedef int HUFv07_DEltX2 ;
typedef TYPE_1__ DTableDesc ;
typedef int BYTE ;
typedef int BITv07_DStream_t ;


 int BITv07_DStream_unfinished ;
 int BITv07_endOfDStream (int *) ;
 size_t BITv07_initDStream (int *,int const* const,size_t const) ;
 int BITv07_reloadDStream (int *) ;
 size_t ERROR (int ) ;
 int HUFv07_DECODE_SYMBOLX2_0 (int *,int *) ;
 int HUFv07_DECODE_SYMBOLX2_1 (int *,int *) ;
 int HUFv07_DECODE_SYMBOLX2_2 (int *,int *) ;
 int HUFv07_decodeStreamX2 (int *,int *,int * const,int const* const,int const) ;
 TYPE_1__ HUFv07_getDTableDesc (int const*) ;
 scalar_t__ HUFv07_isError (size_t const) ;
 size_t MEM_readLE16 (int const* const) ;
 int corruption_detected ;

__attribute__((used)) static size_t HUFv07_decompress4X2_usingDTable_internal(
          void* dst, size_t dstSize,
    const void* cSrc, size_t cSrcSize,
    const HUFv07_DTable* DTable)
{

    if (cSrcSize < 10) return ERROR(corruption_detected);

    { const BYTE* const istart = (const BYTE*) cSrc;
        BYTE* const ostart = (BYTE*) dst;
        BYTE* const oend = ostart + dstSize;
        const void* const dtPtr = DTable + 1;
        const HUFv07_DEltX2* const dt = (const HUFv07_DEltX2*)dtPtr;


        BITv07_DStream_t bitD1;
        BITv07_DStream_t bitD2;
        BITv07_DStream_t bitD3;
        BITv07_DStream_t bitD4;
        size_t const length1 = MEM_readLE16(istart);
        size_t const length2 = MEM_readLE16(istart+2);
        size_t const length3 = MEM_readLE16(istart+4);
        size_t const length4 = cSrcSize - (length1 + length2 + length3 + 6);
        const BYTE* const istart1 = istart + 6;
        const BYTE* const istart2 = istart1 + length1;
        const BYTE* const istart3 = istart2 + length2;
        const BYTE* const istart4 = istart3 + length3;
        const size_t segmentSize = (dstSize+3) / 4;
        BYTE* const opStart2 = ostart + segmentSize;
        BYTE* const opStart3 = opStart2 + segmentSize;
        BYTE* const opStart4 = opStart3 + segmentSize;
        BYTE* op1 = ostart;
        BYTE* op2 = opStart2;
        BYTE* op3 = opStart3;
        BYTE* op4 = opStart4;
        U32 endSignal;
        DTableDesc const dtd = HUFv07_getDTableDesc(DTable);
        U32 const dtLog = dtd.tableLog;

        if (length4 > cSrcSize) return ERROR(corruption_detected);
        { size_t const errorCode = BITv07_initDStream(&bitD1, istart1, length1);
          if (HUFv07_isError(errorCode)) return errorCode; }
        { size_t const errorCode = BITv07_initDStream(&bitD2, istart2, length2);
          if (HUFv07_isError(errorCode)) return errorCode; }
        { size_t const errorCode = BITv07_initDStream(&bitD3, istart3, length3);
          if (HUFv07_isError(errorCode)) return errorCode; }
        { size_t const errorCode = BITv07_initDStream(&bitD4, istart4, length4);
          if (HUFv07_isError(errorCode)) return errorCode; }


        endSignal = BITv07_reloadDStream(&bitD1) | BITv07_reloadDStream(&bitD2) | BITv07_reloadDStream(&bitD3) | BITv07_reloadDStream(&bitD4);
        for ( ; (endSignal==BITv07_DStream_unfinished) && (op4<(oend-7)) ; ) {
            HUFv07_DECODE_SYMBOLX2_2(op1, &bitD1);
            HUFv07_DECODE_SYMBOLX2_2(op2, &bitD2);
            HUFv07_DECODE_SYMBOLX2_2(op3, &bitD3);
            HUFv07_DECODE_SYMBOLX2_2(op4, &bitD4);
            HUFv07_DECODE_SYMBOLX2_1(op1, &bitD1);
            HUFv07_DECODE_SYMBOLX2_1(op2, &bitD2);
            HUFv07_DECODE_SYMBOLX2_1(op3, &bitD3);
            HUFv07_DECODE_SYMBOLX2_1(op4, &bitD4);
            HUFv07_DECODE_SYMBOLX2_2(op1, &bitD1);
            HUFv07_DECODE_SYMBOLX2_2(op2, &bitD2);
            HUFv07_DECODE_SYMBOLX2_2(op3, &bitD3);
            HUFv07_DECODE_SYMBOLX2_2(op4, &bitD4);
            HUFv07_DECODE_SYMBOLX2_0(op1, &bitD1);
            HUFv07_DECODE_SYMBOLX2_0(op2, &bitD2);
            HUFv07_DECODE_SYMBOLX2_0(op3, &bitD3);
            HUFv07_DECODE_SYMBOLX2_0(op4, &bitD4);
            endSignal = BITv07_reloadDStream(&bitD1) | BITv07_reloadDStream(&bitD2) | BITv07_reloadDStream(&bitD3) | BITv07_reloadDStream(&bitD4);
        }


        if (op1 > opStart2) return ERROR(corruption_detected);
        if (op2 > opStart3) return ERROR(corruption_detected);
        if (op3 > opStart4) return ERROR(corruption_detected);



        HUFv07_decodeStreamX2(op1, &bitD1, opStart2, dt, dtLog);
        HUFv07_decodeStreamX2(op2, &bitD2, opStart3, dt, dtLog);
        HUFv07_decodeStreamX2(op3, &bitD3, opStart4, dt, dtLog);
        HUFv07_decodeStreamX2(op4, &bitD4, oend, dt, dtLog);


        endSignal = BITv07_endOfDStream(&bitD1) & BITv07_endOfDStream(&bitD2) & BITv07_endOfDStream(&bitD3) & BITv07_endOfDStream(&bitD4);
        if (!endSignal) return ERROR(corruption_detected);


        return dstSize;
    }
}
