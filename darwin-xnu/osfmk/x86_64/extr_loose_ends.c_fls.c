
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mask ;


 int __builtin_clz (unsigned int) ;

int
fls(unsigned int mask)
{
 if (mask == 0)
  return 0;

 return (sizeof (mask) << 3) - __builtin_clz(mask);
}
