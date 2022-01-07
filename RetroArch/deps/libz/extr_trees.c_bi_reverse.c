
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned bi_reverse(unsigned codes, int len)
   {
      register unsigned res = 0;
      do {
         res |= codes & 1;
         codes >>= 1, res <<= 1;
      } while (--len > 0);
      return res >> 1;
   }
