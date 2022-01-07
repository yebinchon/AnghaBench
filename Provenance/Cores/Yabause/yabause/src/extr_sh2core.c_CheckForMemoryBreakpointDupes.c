
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int nummemorybreakpoints; TYPE_1__* memorybreakpoint; } ;
struct TYPE_7__ {TYPE_2__ bp; } ;
struct TYPE_5__ {int addr; int flags; } ;
typedef TYPE_3__ SH2_struct ;



__attribute__((used)) static int CheckForMemoryBreakpointDupes(SH2_struct *context, u32 addr, u32 flag, int *which)
{
   int i;

   for (i = 0; i < context->bp.nummemorybreakpoints; i++)
   {
      if (((context->bp.memorybreakpoint[i].addr >> 16) & 0xFFF) ==
          ((addr >> 16) & 0xFFF))
      {

         if (context->bp.memorybreakpoint[i].flags & flag)
         {
            *which = i;
            return 1;
         }
      }
   }

   return 0;
}
