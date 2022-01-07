
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int p_dtrace_sprlock; int p_mlock; } ;
typedef TYPE_1__ proc_t ;


 int ASSERT (int) ;
 int FASTTRAP_OBJC_NAME ;
 int FASTTRAP_ONESHOT_NAME ;
 int FASTTRAP_PID_NAME ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int LCK_MTX_ASSERT_OWNED ;
 TYPE_1__* current_proc () ;
 int dtrace_ptss_exec_exit (TYPE_1__*) ;
 int fasttrap_provider_retire (TYPE_1__*,int ,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;

__attribute__((used)) static void
fasttrap_exec_exit(proc_t *p)
{
 ASSERT(p == current_proc());
 LCK_MTX_ASSERT(&p->p_mlock, LCK_MTX_ASSERT_OWNED);
 LCK_MTX_ASSERT(&p->p_dtrace_sprlock, LCK_MTX_ASSERT_NOTOWNED);
 proc_unlock(p);





 fasttrap_provider_retire(p, FASTTRAP_PID_NAME, 0);






 fasttrap_provider_retire(p, FASTTRAP_OBJC_NAME, 0);
 fasttrap_provider_retire(p, FASTTRAP_ONESHOT_NAME, 0);





 lck_mtx_lock(&p->p_dtrace_sprlock);
 dtrace_ptss_exec_exit(p);
 lck_mtx_unlock(&p->p_dtrace_sprlock);

 proc_lock(p);
}
