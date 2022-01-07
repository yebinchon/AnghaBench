
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef scalar_t__ user_addr_t ;
struct TYPE_9__ {int p_lflag; struct TYPE_9__* p_pptr; } ;
typedef TYPE_2__ proc_t ;
struct TYPE_10__ {scalar_t__ pc; } ;
typedef TYPE_3__ arm_saved_state_t ;
struct TYPE_8__ {scalar_t__ t_dtrace_astpc; scalar_t__ t_dtrace_scrpc; scalar_t__ t_dtrace_npc; scalar_t__ t_dtrace_pc; } ;


 int P_LINVFORK ;
 TYPE_2__* current_proc () ;
 int current_thread () ;
 int fasttrap_return_common (TYPE_2__*,TYPE_3__*,scalar_t__,scalar_t__) ;
 int get_bsdthread_info (int ) ;
 int proc_list_lock () ;
 int proc_list_unlock () ;

int
fasttrap_return_probe(arm_saved_state_t *regs)
{
 proc_t *p = current_proc();
 uthread_t uthread = (uthread_t)get_bsdthread_info(current_thread());
 user_addr_t pc = uthread->t_dtrace_pc;
 user_addr_t npc = uthread->t_dtrace_npc;

 uthread->t_dtrace_pc = 0;
 uthread->t_dtrace_npc = 0;
 uthread->t_dtrace_scrpc = 0;
 uthread->t_dtrace_astpc = 0;






 if (p->p_lflag & P_LINVFORK) {
  proc_list_lock();
  while (p->p_lflag & P_LINVFORK)
   p = p->p_pptr;
  proc_list_unlock();
 }
        regs->pc = pc;

 fasttrap_return_common(p, regs, pc, npc);

 return (0);
}
