
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int scuinterrupt_struct ;
struct TYPE_5__ {unsigned int NumberOfInterrupts; int IMS; TYPE_1__* interrupts; int IST; } ;
struct TYPE_4__ {int mask; int statusbit; int level; int vector; } ;


 int MSH2 ;
 int SH2SendInterrupt (int ,int ,int ) ;
 TYPE_3__* ScuRegs ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

void ScuTestInterruptMask()
{
   unsigned int i, i2;


   for (i = 0; i < ScuRegs->NumberOfInterrupts; i++)
   {
      if (!(ScuRegs->IMS & ScuRegs->interrupts[ScuRegs->NumberOfInterrupts-1-i].mask))
      {
         SH2SendInterrupt(MSH2, ScuRegs->interrupts[ScuRegs->NumberOfInterrupts-1-i].vector, ScuRegs->interrupts[ScuRegs->NumberOfInterrupts-1-i].level);
         ScuRegs->IST &= ~ScuRegs->interrupts[ScuRegs->NumberOfInterrupts-1-i].statusbit;


         for (i2 = ScuRegs->NumberOfInterrupts-1-i; i2 < (ScuRegs->NumberOfInterrupts-1); i2++)
            memcpy(&ScuRegs->interrupts[i2], &ScuRegs->interrupts[i2+1], sizeof(scuinterrupt_struct));

         ScuRegs->NumberOfInterrupts--;
         break;
      }
   }
}
