
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int nbBits; int const byte; } ;
typedef TYPE_1__ HUF_DEltX2 ;
typedef int const BYTE ;
typedef int BIT_DStream_t ;


 size_t BIT_lookBitsFast (int *,int const) ;
 int BIT_skipBits (int *,int ) ;

__attribute__((used)) static BYTE HUF_decodeSymbolX2(BIT_DStream_t* Dstream, const HUF_DEltX2* dt, const U32 dtLog)
{
        const size_t val = BIT_lookBitsFast(Dstream, dtLog);
        const BYTE c = dt[val].byte;
        BIT_skipBits(Dstream, dt[val].nbBits);
        return c;
}
