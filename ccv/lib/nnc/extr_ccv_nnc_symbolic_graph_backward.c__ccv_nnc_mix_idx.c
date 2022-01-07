
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;

__attribute__((used)) static inline int _ccv_nnc_mix_idx(const int* const md, const int ins, const int c)
{
 if (c <= 1)
  return 0;
 int ll = 0, uu = c - 1;
 int mm;
 do {
  mm = ll + ((uu - ll) >> 1);
  if (ins == md[mm])
   return mm;
  else if (ins < md[mm])
   uu = mm - 1;
  else if (ins > md[mm])
   ll = mm + 1;
 } while (ll <= uu);
 assert(0 && "Shouldn't reach here");
 return -1;
}
