
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int * uthread_t ;
typedef scalar_t__ user_addr_t ;
struct TYPE_8__ {scalar_t__ si_addr; int si_code; int si_signo; } ;
struct TYPE_9__ {TYPE_1__ sq_info; } ;
typedef TYPE_2__ sigqueue_t ;
struct TYPE_10__ {int p_lock; } ;
typedef TYPE_3__ proc_t ;
typedef scalar_t__ caddr_t ;


 int KM_SLEEP ;
 int SIGTRAP ;
 int TRAP_DTRACE ;
 int aston (int *) ;
 TYPE_2__* kmem_zalloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int printf (char*) ;
 int sigaddqa (TYPE_3__*,int *,TYPE_2__*) ;

void
fasttrap_sigtrap(proc_t *p, uthread_t t, user_addr_t pc)
{
#pragma unused(p, t, pc)


 sigqueue_t *sqp = kmem_zalloc(sizeof (sigqueue_t), KM_SLEEP);

 sqp->sq_info.si_signo = SIGTRAP;
 sqp->sq_info.si_code = TRAP_DTRACE;
 sqp->sq_info.si_addr = (caddr_t)pc;

 mutex_enter(&p->p_lock);
 sigaddqa(p, t, sqp);
 mutex_exit(&p->p_lock);

 if (t != ((void*)0))
  aston(t);


 printf("fasttrap_sigtrap called with no implementation.\n");
}
