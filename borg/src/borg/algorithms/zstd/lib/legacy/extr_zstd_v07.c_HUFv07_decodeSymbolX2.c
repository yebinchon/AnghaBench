
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int nbBits; int const byte; } ;
typedef TYPE_1__ HUFv07_DEltX2 ;
typedef int const BYTE ;
typedef int BITv07_DStream_t ;


 size_t BITv07_lookBitsFast (int *,int const) ;
 int BITv07_skipBits (int *,int ) ;

__attribute__((used)) static BYTE HUFv07_decodeSymbolX2(BITv07_DStream_t* Dstream, const HUFv07_DEltX2* dt, const U32 dtLog)
{
    size_t const val = BITv07_lookBitsFast(Dstream, dtLog);
    BYTE const c = dt[val].byte;
    BITv07_skipBits(Dstream, dt[val].nbBits);
    return c;
}
