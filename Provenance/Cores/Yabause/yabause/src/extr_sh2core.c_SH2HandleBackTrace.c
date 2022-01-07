
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_6__ {int numbacktrace; int * addr; } ;
struct TYPE_5__ {int PC; } ;
struct TYPE_7__ {int instruction; TYPE_2__ bt; TYPE_1__ regs; } ;
typedef TYPE_3__ SH2_struct ;



void SH2HandleBackTrace(SH2_struct *context)
{
   u16 inst = context->instruction;
   if ((inst & 0xF000) == 0xB000 ||
      (inst & 0xF0FF) == 0x0003 ||
      (inst & 0xF0FF) == 0x400B)
   {
      if (context->bt.numbacktrace < sizeof(context->bt.addr)/sizeof(u32))
      {
         context->bt.addr[context->bt.numbacktrace] = context->regs.PC;
         context->bt.numbacktrace++;
      }
   }
   else if (inst == 0x000B)
   {
      if (context->bt.numbacktrace > 0)
         context->bt.numbacktrace--;
   }
}
