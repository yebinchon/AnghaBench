
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int RAMCTL; } ;
typedef TYPE_1__ Vdp2 ;


 scalar_t__ CheckBanks (TYPE_1__*,int) ;

int Rbg0CheckRam(Vdp2* regs)
{
   if (((regs->RAMCTL >> 8) & 3) == 3)
   {


      if (CheckBanks(regs, 1))
         return 1;
   }

   return 0;
}
