
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_4__ {int length; int nbBits; } ;
typedef TYPE_1__ HUFv07_DEltX4 ;
typedef int BITv07_DStream_t ;


 size_t BITv07_lookBitsFast (int *,int const) ;
 int BITv07_skipBits (int *,int ) ;
 int memcpy (void*,TYPE_1__ const*,int) ;

__attribute__((used)) static U32 HUFv07_decodeSymbolX4(void* op, BITv07_DStream_t* DStream, const HUFv07_DEltX4* dt, const U32 dtLog)
{
    const size_t val = BITv07_lookBitsFast(DStream, dtLog);
    memcpy(op, dt+val, 2);
    BITv07_skipBits(DStream, dt[val].nbBits);
    return dt[val].length;
}
