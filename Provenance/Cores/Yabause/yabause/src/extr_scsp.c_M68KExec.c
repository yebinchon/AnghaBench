
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;


 int IsM68KRunning ;
 scalar_t__ LIKELY (int) ;
 scalar_t__ m68kexecptr (scalar_t__) ;
 scalar_t__ savedcycles ;
 scalar_t__ stub1 (scalar_t__) ;

void
M68KExec (s32 cycles)
{
  s32 newcycles = savedcycles - cycles;
  if (LIKELY(IsM68KRunning))
    {
      if (LIKELY(newcycles < 0))
        {
          s32 cyclestoexec = -newcycles;
          newcycles += (*m68kexecptr)(cyclestoexec);
        }
      savedcycles = newcycles;
    }
}
