
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int bitswap_32 (int) ;

__attribute__((used)) static uint32_t reverse(uint32_t num, int bits)
{
    return bitswap_32(num) >> (32 - bits);
}
