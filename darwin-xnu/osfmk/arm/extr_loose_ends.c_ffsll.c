
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __builtin_ctzll (unsigned long long) ;

int
ffsll(unsigned long long mask)
{
 if (mask == 0)
  return 0;





 return 1 + __builtin_ctzll(mask);
}
