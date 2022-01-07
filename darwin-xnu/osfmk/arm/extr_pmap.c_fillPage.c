
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 int PAGE_SIZE ;
 scalar_t__ phystokv (int ) ;
 int ptoa (int ) ;

void
fillPage(
 ppnum_t pn,
 unsigned int fill)
{
 unsigned int *addr;
 int count;

 addr = (unsigned int *) phystokv(ptoa(pn));
 count = PAGE_SIZE / sizeof(unsigned int);
 while (count--)
  *addr++ = fill;
}
