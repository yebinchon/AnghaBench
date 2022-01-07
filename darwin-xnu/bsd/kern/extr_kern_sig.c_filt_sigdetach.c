
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* p_proc; } ;
struct knote {TYPE_1__ kn_ptr; } ;
typedef TYPE_2__* proc_t ;
struct TYPE_4__ {int p_klist; } ;


 int KNOTE_DETACH (int *,struct knote*) ;
 int proc_klist_lock () ;
 int proc_klist_unlock () ;

__attribute__((used)) static void
filt_sigdetach(struct knote *kn)
{
 proc_t p = kn->kn_ptr.p_proc;

 proc_klist_lock();
 kn->kn_ptr.p_proc = ((void*)0);
 KNOTE_DETACH(&p->p_klist, kn);
 proc_klist_unlock();
}
