
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_7__ {scalar_t__ all; } ;
struct TYPE_8__ {scalar_t__ OCRA; int TIER; int VCRC; int IPRB; int FTCSR; scalar_t__ OCRB; int VCRD; TYPE_2__ FRC; } ;
struct TYPE_6__ {int shift; scalar_t__ leftover; } ;
struct TYPE_9__ {TYPE_3__ onchip; TYPE_1__ frc; } ;


 TYPE_4__* CurrentSH2 ;
 int SH2SendInterrupt (TYPE_4__*,int,int) ;

void FRTExec(u32 cycles)
{
   u32 frcold;
   u32 frctemp;
   u32 mask;

   frcold = frctemp = (u32)CurrentSH2->onchip.FRC.all;
   mask = (1 << CurrentSH2->frc.shift) - 1;


   frctemp += ((cycles + CurrentSH2->frc.leftover) >> CurrentSH2->frc.shift);
   CurrentSH2->frc.leftover = (cycles + CurrentSH2->frc.leftover) & mask;


   if (frctemp >= CurrentSH2->onchip.OCRA && frcold < CurrentSH2->onchip.OCRA)
   {

      if (CurrentSH2->onchip.TIER & 0x8)
         SH2SendInterrupt(CurrentSH2, CurrentSH2->onchip.VCRC & 0x7F, (CurrentSH2->onchip.IPRB & 0xF00) >> 8);


      if (CurrentSH2->onchip.FTCSR & 0x1)
      {
         frctemp = 0;
         CurrentSH2->frc.leftover = 0;
      }


      CurrentSH2->onchip.FTCSR |= 0x8;
   }


   if (frctemp >= CurrentSH2->onchip.OCRB && frcold < CurrentSH2->onchip.OCRB)
   {

      if (CurrentSH2->onchip.TIER & 0x4)
         SH2SendInterrupt(CurrentSH2, CurrentSH2->onchip.VCRC & 0x7F, (CurrentSH2->onchip.IPRB & 0xF00) >> 8);


      CurrentSH2->onchip.FTCSR |= 0x4;
   }


   if (frctemp > 0xFFFF)
   {

      if (CurrentSH2->onchip.TIER & 0x2)
         SH2SendInterrupt(CurrentSH2, (CurrentSH2->onchip.VCRD >> 8) & 0x7F, (CurrentSH2->onchip.IPRB & 0xF00) >> 8);

      CurrentSH2->onchip.FTCSR |= 2;
   }


   CurrentSH2->onchip.FRC.all = frctemp;
}
