
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_6__ {int WTCSR; int RSTCSR; int VCRWDT; int IPRA; scalar_t__ WTCNT; } ;
struct TYPE_5__ {int shift; int leftover; scalar_t__ isinterval; int isenable; } ;
struct TYPE_7__ {TYPE_2__ onchip; TYPE_1__ wdt; } ;


 TYPE_3__* CurrentSH2 ;
 int LOG (char*) ;
 int SH2SendInterrupt (TYPE_3__*,int,int) ;

void WDTExec(u32 cycles) {
   u32 wdttemp;
   u32 mask;

   if (!CurrentSH2->wdt.isenable || CurrentSH2->onchip.WTCSR & 0x80 || CurrentSH2->onchip.RSTCSR & 0x80)
      return;

   wdttemp = (u32)CurrentSH2->onchip.WTCNT;
   mask = (1 << CurrentSH2->wdt.shift) - 1;
   wdttemp += ((cycles + CurrentSH2->wdt.leftover) >> CurrentSH2->wdt.shift);
   CurrentSH2->wdt.leftover = (cycles + CurrentSH2->wdt.leftover) & mask;


   if (wdttemp > 0xFF)
   {



      if (CurrentSH2->wdt.isinterval)
      {



         CurrentSH2->onchip.WTCSR |= 0x80;


         SH2SendInterrupt(CurrentSH2, (CurrentSH2->onchip.VCRWDT >> 8) & 0x7F, (CurrentSH2->onchip.IPRA >> 4) & 0xF);
      }
      else
      {

         LOG("Watchdog timer(WDT mode) overflow not implemented\n");
      }
   }


   CurrentSH2->onchip.WTCNT = (u8)wdttemp;
}
