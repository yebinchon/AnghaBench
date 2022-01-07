
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* uthread_t ;
typedef int user_addr_t ;
typedef int proc_t ;
typedef int arm_saved_state_t ;
struct TYPE_4__ {int vc_thread; } ;
struct TYPE_5__ {TYPE_1__ uu_context; scalar_t__ uu_subcode; int uu_exception; int uu_siglist; int uu_code; } ;


 int KERN_INVALID_ADDRESS ;
 int SIGSEGV ;
 int panic (char*) ;
 int proc_lock (int *) ;
 int proc_unlock (int *) ;
 int set_saved_state_pc (int *,int ) ;
 int sigmask (int ) ;
 int signal_setast (int ) ;

__attribute__((used)) static void
fasttrap_sigsegv(proc_t *p, uthread_t t, user_addr_t addr, arm_saved_state_t *regs)
{







#pragma unused(p,t,addr)

 set_saved_state_pc(regs, 0);
}
