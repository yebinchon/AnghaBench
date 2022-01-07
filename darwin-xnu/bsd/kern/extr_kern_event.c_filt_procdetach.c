
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc {int p_klist; } ;
struct TYPE_2__ {struct proc* p_proc; } ;
struct knote {TYPE_1__ kn_ptr; } ;


 int KNOTE_DETACH (int *,struct knote*) ;
 struct proc* PROC_NULL ;
 int proc_klist_lock () ;
 int proc_klist_unlock () ;

__attribute__((used)) static void
filt_procdetach(struct knote *kn)
{
 struct proc *p;

 proc_klist_lock();

 p = kn->kn_ptr.p_proc;
 if (p != PROC_NULL) {
  kn->kn_ptr.p_proc = PROC_NULL;
  KNOTE_DETACH(&p->p_klist, kn);
 }

 proc_klist_unlock();
}
