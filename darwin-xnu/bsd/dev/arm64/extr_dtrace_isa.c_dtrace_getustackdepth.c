
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int * thread_t ;
typedef int savearea_t ;


 int CPU_DTRACE_ENTRY ;
 int CPU_DTRACE_FAULT ;
 scalar_t__ DTRACE_CPUFLAG_ISSET (int ) ;
 int * current_thread () ;
 scalar_t__ dtrace_getustack_common (int *,int ,int ,int ) ;
 scalar_t__ find_user_regs (int *) ;
 int get_saved_state_fp (int *) ;
 int get_saved_state_lr (int *) ;
 int get_saved_state_pc (int *) ;
 int get_saved_state_sp (int *) ;

int
dtrace_getustackdepth(void)
{
 thread_t thread = current_thread();
 savearea_t *regs;
 user_addr_t pc, sp, fp;
 int n = 0;

 if (thread == ((void*)0))
  return 0;

 if (DTRACE_CPUFLAG_ISSET(CPU_DTRACE_FAULT))
  return (-1);

 regs = (savearea_t *) find_user_regs(thread);
 if (regs == ((void*)0))
  return 0;

 pc = get_saved_state_pc(regs);
 sp = get_saved_state_sp(regs);
 fp = get_saved_state_fp(regs);

 if (DTRACE_CPUFLAG_ISSET(CPU_DTRACE_ENTRY)) {
  n++;
  pc = get_saved_state_lr(regs);
 }
 n += dtrace_getustack_common(((void*)0), 0, pc, fp);

 return (n);
}
