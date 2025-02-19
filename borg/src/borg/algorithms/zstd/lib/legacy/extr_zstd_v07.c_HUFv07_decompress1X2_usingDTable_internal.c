
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


 int BITv07_endOfDStream (int *) ;
 size_t BITv07_initDStream (int *,void const*,size_t) ;
 size_t ERROR (int ) ;
 int HUFv07_decodeStreamX2 (int *,int *,int * const,int const* const,int const) ;
 TYPE_1__ HUFv07_getDTableDesc (int const*) ;
 scalar_t__ HUFv07_isError (size_t const) ;
 int corruption_detected ;

__attribute__((used)) static size_t HUFv07_decompress1X2_usingDTable_internal(
          void* dst, size_t dstSize,
    const void* cSrc, size_t cSrcSize,
    const HUFv07_DTable* DTable)
{
    BYTE* op = (BYTE*)dst;
    BYTE* const oend = op + dstSize;
    const void* dtPtr = DTable + 1;
    const HUFv07_DEltX2* const dt = (const HUFv07_DEltX2*)dtPtr;
    BITv07_DStream_t bitD;
    DTableDesc const dtd = HUFv07_getDTableDesc(DTable);
    U32 const dtLog = dtd.tableLog;

    { size_t const errorCode = BITv07_initDStream(&bitD, cSrc, cSrcSize);
      if (HUFv07_isError(errorCode)) return errorCode; }

    HUFv07_decodeStreamX2(op, &bitD, oend, dt, dtLog);


    if (!BITv07_endOfDStream(&bitD)) return ERROR(corruption_detected);

    return dstSize;
}
