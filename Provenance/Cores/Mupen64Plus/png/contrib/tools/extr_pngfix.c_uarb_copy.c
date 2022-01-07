
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * uarb ;



__attribute__((used)) static int
uarb_copy(uarb to, uarb from, int idigits)

{
   int d, odigits;

   for (d=odigits=0; d<idigits; ++d)
      if ((to[d] = from[d]) != 0)
         odigits = d+1;

   return odigits;
}
