
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int memorybreakpoint_struct ;
struct TYPE_4__ {int * memorybreakpoint; } ;
struct TYPE_5__ {TYPE_1__ bp; } ;
typedef TYPE_2__ SH2_struct ;



memorybreakpoint_struct *SH2GetMemoryBreakpointList(SH2_struct *context) {
   return context->bp.memorybreakpoint;
}
