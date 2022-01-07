
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* p_dtrace_lazy_dofs; int * p_dtrace_helpers; int p_dtrace_sprlock; } ;
typedef TYPE_1__ proc_t ;
struct TYPE_12__ {int dofiod_count; } ;
typedef TYPE_2__ dof_ioctl_data_t ;


 int ASSERT (int) ;
 size_t DOF_IOCTL_DATA_T_SIZE (int ) ;
 scalar_t__ DTRACE_DOF_MODE_LAZY_OFF ;
 int DTRACE_LAZY_DOFS_DUPLICATED ;
 int KM_SLEEP ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int bcopy (TYPE_2__*,TYPE_2__*,size_t) ;
 scalar_t__ dtrace_dof_mode ;
 int dtrace_dof_mode_lock ;
 int dtrace_lazy_dofs_process (TYPE_1__*) ;
 int dtrace_lock ;
 int dtrace_sprlock (TYPE_1__*) ;
 int dtrace_sprunlock (TYPE_1__*) ;
 TYPE_2__* kmem_alloc (size_t,int ) ;
 int lck_rw_lock_shared (int *) ;
 int lck_rw_unlock_shared (int *) ;

__attribute__((used)) static int
dtrace_lazy_dofs_duplicate(proc_t *parent, proc_t *child)
{
 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_NOTOWNED);
 LCK_MTX_ASSERT(&parent->p_dtrace_sprlock, LCK_MTX_ASSERT_NOTOWNED);
 LCK_MTX_ASSERT(&child->p_dtrace_sprlock, LCK_MTX_ASSERT_NOTOWNED);

 lck_rw_lock_shared(&dtrace_dof_mode_lock);
 dtrace_sprlock(parent);





 ASSERT(parent->p_dtrace_lazy_dofs == ((void*)0) || parent->p_dtrace_helpers == ((void*)0));



 ASSERT(child->p_dtrace_lazy_dofs == ((void*)0) && child->p_dtrace_helpers == ((void*)0));

 dof_ioctl_data_t* parent_dofs = parent->p_dtrace_lazy_dofs;
 dof_ioctl_data_t* child_dofs = ((void*)0);
 if (parent_dofs) {
  size_t parent_dofs_size = DOF_IOCTL_DATA_T_SIZE(parent_dofs->dofiod_count);
  child_dofs = kmem_alloc(parent_dofs_size, KM_SLEEP);
  bcopy(parent_dofs, child_dofs, parent_dofs_size);
 }

 dtrace_sprunlock(parent);

 if (child_dofs) {
  dtrace_sprlock(child);
  child->p_dtrace_lazy_dofs = child_dofs;
  dtrace_sprunlock(child);







  if (dtrace_dof_mode == DTRACE_DOF_MODE_LAZY_OFF) {
   dtrace_lazy_dofs_process(child);
  }
  lck_rw_unlock_shared(&dtrace_dof_mode_lock);

  return DTRACE_LAZY_DOFS_DUPLICATED;
 }
 lck_rw_unlock_shared(&dtrace_dof_mode_lock);

 return 0;
}
