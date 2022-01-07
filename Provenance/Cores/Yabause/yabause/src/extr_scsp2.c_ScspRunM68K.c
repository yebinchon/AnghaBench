
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ s32 ;


 scalar_t__ LIKELY (int) ;
 scalar_t__ m68k_execf (scalar_t__) ;
 int m68k_running ;
 scalar_t__ m68k_saved_cycles ;
 scalar_t__ stub1 (scalar_t__) ;

__attribute__((used)) static void ScspRunM68K(u32 cycles)
{
   if (LIKELY(m68k_running))
   {
      s32 new_cycles = m68k_saved_cycles + cycles;
      if (LIKELY(new_cycles > 0))
         new_cycles -= (*m68k_execf)(new_cycles);
      m68k_saved_cycles = new_cycles;
   }
}
