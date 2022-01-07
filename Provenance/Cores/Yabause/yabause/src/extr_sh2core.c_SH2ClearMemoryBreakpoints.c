
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nummemorybreakpoints; TYPE_1__* memorybreakpoint; } ;
struct TYPE_7__ {TYPE_2__ bp; } ;
struct TYPE_5__ {int addr; int * oldwritelong; int * oldwriteword; int * oldwritebyte; int * oldreadlong; int * oldreadword; int * oldreadbyte; scalar_t__ flags; } ;
typedef TYPE_3__ SH2_struct ;


 int MAX_BREAKPOINTS ;

void SH2ClearMemoryBreakpoints(SH2_struct *context) {
   int i;
   for (i = 0; i < MAX_BREAKPOINTS; i++)
   {
      context->bp.memorybreakpoint[i].addr = 0xFFFFFFFF;
      context->bp.memorybreakpoint[i].flags = 0;
      context->bp.memorybreakpoint[i].oldreadbyte = ((void*)0);
      context->bp.memorybreakpoint[i].oldreadword = ((void*)0);
      context->bp.memorybreakpoint[i].oldreadlong = ((void*)0);
      context->bp.memorybreakpoint[i].oldwritebyte = ((void*)0);
      context->bp.memorybreakpoint[i].oldwriteword = ((void*)0);
      context->bp.memorybreakpoint[i].oldwritelong = ((void*)0);
   }
   context->bp.nummemorybreakpoints = 0;
}
