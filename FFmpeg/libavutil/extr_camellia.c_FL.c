
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int LR32 (int,int) ;
 int MASK32 ;

__attribute__((used)) static uint64_t FL(uint64_t FL_IN, uint64_t KE)
{
    uint32_t x1, x2, k1, k2;
    x1 = FL_IN >> 32;
    x2 = FL_IN & MASK32;
    k1 = KE >> 32;
    k2 = KE & MASK32;
    x2 = x2 ^ LR32((x1 & k1), 1);
    x1 = x1 ^ (x2 | k2);
    return ((uint64_t)x1 << 32) | (uint64_t)x2;
}
