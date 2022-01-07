
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t X ;
struct TYPE_3__ {int* MDS1; int* MDS2; int* MDS3; int* MDS4; } ;
typedef TYPE_1__ AVTWOFISH ;



__attribute__((used)) static uint32_t MDS_mul(AVTWOFISH *cs, uint32_t X)
{
    return cs->MDS1[(X) & 0xff] ^ cs->MDS2[((X) >> 8) & 0xff] ^ cs->MDS3[((X) >> 16) & 0xff] ^ cs->MDS4[(X) >> 24];
}
