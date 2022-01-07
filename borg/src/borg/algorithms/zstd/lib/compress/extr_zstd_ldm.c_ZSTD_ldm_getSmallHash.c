
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U64 ;
typedef int U32 ;


 int assert (int) ;

__attribute__((used)) static U32 ZSTD_ldm_getSmallHash(U64 value, U32 numBits)
{
    assert(numBits <= 32);
    return numBits == 0 ? 0 : (U32)(value >> (64 - numBits));
}
