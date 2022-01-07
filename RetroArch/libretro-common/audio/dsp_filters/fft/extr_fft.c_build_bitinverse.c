
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int bitswap (unsigned int,unsigned int) ;

__attribute__((used)) static void build_bitinverse(unsigned *bitinverse, unsigned size_log2)
{
   unsigned i;
   unsigned size = 1 << size_log2;
   for (i = 0; i < size; i++)
      bitinverse[i] = bitswap(i, size_log2);
}
