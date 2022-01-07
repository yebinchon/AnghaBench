
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int HUFv06_DEltX4 ;
typedef int BYTE ;
typedef int BITv06_DStream_t ;


 scalar_t__ BITv06_DStream_unfinished ;
 scalar_t__ BITv06_reloadDStream (int *) ;
 int HUFv06_DECODE_SYMBOLX4_0 (int *,int *) ;
 int HUFv06_DECODE_SYMBOLX4_1 (int *,int *) ;
 int HUFv06_DECODE_SYMBOLX4_2 (int *,int *) ;
 int HUFv06_decodeLastSymbolX4 (int *,int *,int const* const,int const) ;

__attribute__((used)) static inline size_t HUFv06_decodeStreamX4(BYTE* p, BITv06_DStream_t* bitDPtr, BYTE* const pEnd, const HUFv06_DEltX4* const dt, const U32 dtLog)
{
    BYTE* const pStart = p;


    while ((BITv06_reloadDStream(bitDPtr) == BITv06_DStream_unfinished) && (p < pEnd-7)) {
        HUFv06_DECODE_SYMBOLX4_2(p, bitDPtr);
        HUFv06_DECODE_SYMBOLX4_1(p, bitDPtr);
        HUFv06_DECODE_SYMBOLX4_2(p, bitDPtr);
        HUFv06_DECODE_SYMBOLX4_0(p, bitDPtr);
    }


    while ((BITv06_reloadDStream(bitDPtr) == BITv06_DStream_unfinished) && (p <= pEnd-2))
        HUFv06_DECODE_SYMBOLX4_0(p, bitDPtr);

    while (p <= pEnd-2)
        HUFv06_DECODE_SYMBOLX4_0(p, bitDPtr);

    if (p < pEnd)
        p += HUFv06_decodeLastSymbolX4(p, bitDPtr, dt, dtLog);

    return p-pStart;
}
