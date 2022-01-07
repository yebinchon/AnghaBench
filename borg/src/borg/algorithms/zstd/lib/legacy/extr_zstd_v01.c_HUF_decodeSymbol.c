
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int U32 ;
struct TYPE_3__ {int nbBits; int const byte; } ;
typedef TYPE_1__ HUF_DElt ;
typedef int FSE_DStream_t ;
typedef int const BYTE ;


 size_t FSE_lookBitsFast (int *,int const) ;
 int FSE_skipBits (int *,int ) ;

__attribute__((used)) static BYTE HUF_decodeSymbol(FSE_DStream_t* Dstream, const HUF_DElt* dt, const U32 dtLog)
{
        const size_t val = FSE_lookBitsFast(Dstream, dtLog);
        const BYTE c = dt[val].byte;
        FSE_skipBits(Dstream, dt[val].nbBits);
        return c;
}
