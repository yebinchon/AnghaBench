
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int Exec; } ;
struct TYPE_3__ {scalar_t__ addr; } ;


 TYPE_2__* M68K ;
 TYPE_1__* m68k_breakpoint ;
 int m68k_execf ;
 int m68k_num_breakpoints ;

int M68KDelCodeBreakpoint(u32 address)
{
   int i;

   if (m68k_num_breakpoints > 0)
   {
      for (i = 0; i < m68k_num_breakpoints; i++)
      {
         if (m68k_breakpoint[i].addr == address)
         {


            m68k_breakpoint[i].addr = m68k_breakpoint[m68k_num_breakpoints-1].addr;
            m68k_breakpoint[m68k_num_breakpoints-1].addr = 0xFFFFFFFF;
            m68k_num_breakpoints--;

            if (m68k_num_breakpoints == 0)
            {

               m68k_execf = M68K->Exec;
            }

            return 0;
         }
      }
   }

   return -1;
}
