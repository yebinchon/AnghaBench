
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ addr; } ;


 int M68KExecBP ;
 int MAX_BREAKPOINTS ;
 TYPE_1__* m68k_breakpoint ;
 int m68k_execf ;
 int m68k_num_breakpoints ;

int M68KAddCodeBreakpoint(u32 address)
{
   int i;

   if (m68k_num_breakpoints >= MAX_BREAKPOINTS)
      return -1;


   for (i = 0; i < m68k_num_breakpoints; i++)
   {
      if (m68k_breakpoint[i].addr == address)
         return -1;
   }

   m68k_breakpoint[m68k_num_breakpoints].addr = address;
   m68k_num_breakpoints++;


   m68k_execf = M68KExecBP;

   return 0;
}
