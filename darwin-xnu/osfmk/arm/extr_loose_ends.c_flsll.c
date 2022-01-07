
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mask ;


 int __builtin_clzll (unsigned long long) ;

int
flsll(unsigned long long mask)
{
 if (mask == 0)
  return 0;

 return (sizeof (mask) << 3) - __builtin_clzll(mask);
}
