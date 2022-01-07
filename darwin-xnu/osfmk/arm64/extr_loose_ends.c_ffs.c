
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __builtin_ctz (unsigned int) ;

int
ffs(unsigned int mask)
{
 if (mask == 0)
  return 0;





 return 1 + __builtin_ctz(mask);
}
