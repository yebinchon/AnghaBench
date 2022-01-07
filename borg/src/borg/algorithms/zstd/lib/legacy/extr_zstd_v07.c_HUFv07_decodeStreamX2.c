
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;
typedef int HUFv07_DEltX2 ;
typedef int BYTE ;
typedef int BITv07_DStream_t ;


 scalar_t__ BITv07_DStream_unfinished ;
 scalar_t__ BITv07_reloadDStream (int * const) ;
 int HUFv07_DECODE_SYMBOLX2_0 (int *,int * const) ;
 int HUFv07_DECODE_SYMBOLX2_1 (int *,int * const) ;
 int HUFv07_DECODE_SYMBOLX2_2 (int *,int * const) ;

__attribute__((used)) static inline size_t HUFv07_decodeStreamX2(BYTE* p, BITv07_DStream_t* const bitDPtr, BYTE* const pEnd, const HUFv07_DEltX2* const dt, const U32 dtLog)
{
    BYTE* const pStart = p;


    while ((BITv07_reloadDStream(bitDPtr) == BITv07_DStream_unfinished) && (p <= pEnd-4)) {
        HUFv07_DECODE_SYMBOLX2_2(p, bitDPtr);
        HUFv07_DECODE_SYMBOLX2_1(p, bitDPtr);
        HUFv07_DECODE_SYMBOLX2_2(p, bitDPtr);
        HUFv07_DECODE_SYMBOLX2_0(p, bitDPtr);
    }


    while ((BITv07_reloadDStream(bitDPtr) == BITv07_DStream_unfinished) && (p < pEnd))
        HUFv07_DECODE_SYMBOLX2_0(p, bitDPtr);


    while (p < pEnd)
        HUFv07_DECODE_SYMBOLX2_0(p, bitDPtr);

    return pEnd-pStart;
}
