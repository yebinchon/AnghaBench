
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int M68KBreakpointInfo ;


 int const* m68k_breakpoint ;

const M68KBreakpointInfo *M68KGetBreakpointList(void)
{
   return m68k_breakpoint;
}
