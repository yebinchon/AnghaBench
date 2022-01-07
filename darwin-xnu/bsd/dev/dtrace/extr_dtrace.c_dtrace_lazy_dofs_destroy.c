
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_dtrace_lazy_dofs; int * p_dtrace_helpers; } ;
typedef TYPE_1__ proc_t ;
struct TYPE_8__ {int dofiod_count; } ;
typedef TYPE_2__ dof_ioctl_data_t ;


 int ASSERT (int) ;
 int DOF_IOCTL_DATA_T_SIZE (int ) ;
 int dtrace_dof_mode_lock ;
 int dtrace_sprlock (TYPE_1__*) ;
 int dtrace_sprunlock (TYPE_1__*) ;
 int kmem_free (TYPE_2__*,int ) ;
 int lck_rw_lock_shared (int *) ;
 int lck_rw_unlock_shared (int *) ;

void
dtrace_lazy_dofs_destroy(proc_t *p)
{
 lck_rw_lock_shared(&dtrace_dof_mode_lock);
 dtrace_sprlock(p);

 ASSERT(p->p_dtrace_lazy_dofs == ((void*)0) || p->p_dtrace_helpers == ((void*)0));

 dof_ioctl_data_t* lazy_dofs = p->p_dtrace_lazy_dofs;
 p->p_dtrace_lazy_dofs = ((void*)0);

 dtrace_sprunlock(p);
 lck_rw_unlock_shared(&dtrace_dof_mode_lock);

 if (lazy_dofs) {
  kmem_free(lazy_dofs, DOF_IOCTL_DATA_T_SIZE(lazy_dofs->dofiod_count));
 }
}
