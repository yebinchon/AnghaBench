
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RAMCTL; } ;
typedef TYPE_1__ Vdp2 ;



int CheckBanks(Vdp2* regs, int compare_value)
{
   if (((regs->RAMCTL >> 0) & 3) == compare_value)
      return 0;
   if (((regs->RAMCTL >> 2) & 3) == compare_value)
      return 0;
   if (((regs->RAMCTL >> 4) & 3) == compare_value)
      return 0;
   if (((regs->RAMCTL >> 6) & 3) == compare_value)
      return 0;

   return 1;
}
