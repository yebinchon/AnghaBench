
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x86_saved_state_t ;


 int fasttrap_pid_probe32 (int *) ;
 int fasttrap_pid_probe64 (int *) ;
 scalar_t__ is_saved_state64 (int *) ;

int
fasttrap_pid_probe(x86_saved_state_t *regs)
{
        if (is_saved_state64(regs))
  return fasttrap_pid_probe64(regs);

 return fasttrap_pid_probe32(regs);
}
