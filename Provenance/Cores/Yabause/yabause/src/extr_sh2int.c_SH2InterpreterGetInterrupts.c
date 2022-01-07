
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int interrupt_struct ;
struct TYPE_3__ {int NumberOfInterrupts; int interrupts; } ;
typedef TYPE_1__ SH2_struct ;


 int MAX_INTERRUPTS ;
 int memcpy (int *,int ,int) ;

int SH2InterpreterGetInterrupts(SH2_struct *context,
                                interrupt_struct interrupts[MAX_INTERRUPTS])
{
   memcpy(interrupts, context->interrupts, sizeof(interrupt_struct) * MAX_INTERRUPTS);
   return context->NumberOfInterrupts;
}
