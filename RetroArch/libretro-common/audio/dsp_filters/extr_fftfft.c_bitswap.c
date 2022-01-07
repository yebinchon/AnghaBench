
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned bitswap(unsigned x, unsigned size_log2)
{
   unsigned i;
   unsigned ret = 0;
   for (i = 0; i < size_log2; i++)
      ret |= ((x >> i) & 1) << (size_log2 - i - 1);
   return ret;
}
