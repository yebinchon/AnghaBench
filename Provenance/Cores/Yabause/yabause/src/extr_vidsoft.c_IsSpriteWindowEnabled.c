
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



int IsSpriteWindowEnabled(u16 wtcl)
{
   if (((wtcl& (1 << 13)) == 0) &&
      ((wtcl & (1 << 5)) == 0))
      return 0;

   return 1;
}
