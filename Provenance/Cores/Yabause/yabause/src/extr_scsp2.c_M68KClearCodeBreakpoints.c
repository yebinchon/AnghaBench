
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int Exec; } ;
struct TYPE_3__ {int addr; } ;


 TYPE_2__* M68K ;
 int MAX_BREAKPOINTS ;
 TYPE_1__* m68k_breakpoint ;
 int m68k_execf ;
 scalar_t__ m68k_num_breakpoints ;

void M68KClearCodeBreakpoints(void)
{
   int i;
   for (i = 0; i < MAX_BREAKPOINTS; i++)
      m68k_breakpoint[i].addr = 0xFFFFFFFF;

   m68k_num_breakpoints = 0;
   m68k_execf = M68K->Exec;
}
