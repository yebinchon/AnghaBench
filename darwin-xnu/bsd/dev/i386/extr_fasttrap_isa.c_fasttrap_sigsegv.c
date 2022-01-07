
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* uthread_t ;
typedef int user_addr_t ;
typedef int proc_t ;
struct TYPE_4__ {int vc_thread; } ;
struct TYPE_5__ {TYPE_1__ uu_context; scalar_t__ uu_subcode; int uu_exception; int uu_siglist; int uu_code; } ;


 int KERN_INVALID_ADDRESS ;
 int SIGSEGV ;
 int proc_lock (int *) ;
 int proc_unlock (int *) ;
 int sigmask (int ) ;
 int signal_setast (int ) ;

__attribute__((used)) static void
fasttrap_sigsegv(proc_t *p, uthread_t t, user_addr_t addr)
{
 proc_lock(p);


 t->uu_code = addr;
 t->uu_siglist |= sigmask(SIGSEGV);






 t->uu_exception = KERN_INVALID_ADDRESS;
 t->uu_subcode = 0;

 proc_unlock(p);


 signal_setast(t->uu_context.vc_thread);
}
