
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_2__* p_dtrace_lazy_dofs; int * p_dtrace_helpers; } ;
typedef TYPE_1__ proc_t ;
struct TYPE_11__ {int dofiod_count; TYPE_8__* dofiod_helpers; } ;
typedef TYPE_2__ dof_ioctl_data_t ;
typedef int dof_helper_t ;
struct TYPE_12__ {scalar_t__ dofhp_dof; } ;


 int ASSERT (int) ;
 size_t DOF_IOCTL_DATA_T_SIZE (int) ;
 scalar_t__ DTRACE_DOF_MODE_LAZY_ON ;
 scalar_t__ DTRACE_DOF_MODE_NEVER ;
 int EACCES ;
 int EINVAL ;
 int KERN_SUCCESS ;
 int KM_SLEEP ;
 int bcopy (TYPE_8__*,TYPE_8__*,int) ;
 scalar_t__ dtrace_dof_mode ;
 int dtrace_dof_mode_lock ;
 int dtrace_sprlock (TYPE_1__*) ;
 int dtrace_sprunlock (TYPE_1__*) ;
 TYPE_2__* kmem_alloc (size_t,int ) ;
 int kmem_free (TYPE_2__*,size_t) ;
 int lck_rw_lock_shared (int *) ;
 int lck_rw_unlock_shared (int *) ;

__attribute__((used)) static int
dtrace_lazy_dofs_remove(proc_t *p, int generation)
{
 int rval = EINVAL;

 lck_rw_lock_shared(&dtrace_dof_mode_lock);

 ASSERT(p->p_dtrace_lazy_dofs == ((void*)0) || p->p_dtrace_helpers == ((void*)0));
 ASSERT(dtrace_dof_mode != DTRACE_DOF_MODE_NEVER);




 if (dtrace_dof_mode == DTRACE_DOF_MODE_LAZY_ON && (p->p_dtrace_helpers == ((void*)0))) {
  dtrace_sprlock(p);

  dof_ioctl_data_t* existing_dofs = p->p_dtrace_lazy_dofs;

  if (existing_dofs) {
   int index, existing_dofs_count = existing_dofs->dofiod_count;
   for (index=0; index<existing_dofs_count; index++) {
    if ((int)existing_dofs->dofiod_helpers[index].dofhp_dof == generation) {
     dof_ioctl_data_t* removed_dofs = ((void*)0);




     if (existing_dofs_count > 1) {
      int removed_dofs_count = existing_dofs_count - 1;
      size_t removed_dofs_size = DOF_IOCTL_DATA_T_SIZE(removed_dofs_count);

      removed_dofs = kmem_alloc(removed_dofs_size, KM_SLEEP);
      removed_dofs->dofiod_count = removed_dofs_count;




      if (index > 0) {
       bcopy(&existing_dofs->dofiod_helpers[0],
             &removed_dofs->dofiod_helpers[0],
             index * sizeof(dof_helper_t));
      }

      if (index < existing_dofs_count-1) {
       bcopy(&existing_dofs->dofiod_helpers[index+1],
             &removed_dofs->dofiod_helpers[index],
             (existing_dofs_count - index - 1) * sizeof(dof_helper_t));
      }
     }

     kmem_free(existing_dofs, DOF_IOCTL_DATA_T_SIZE(existing_dofs_count));

     p->p_dtrace_lazy_dofs = removed_dofs;

     rval = KERN_SUCCESS;

     break;
    }
   }
  }
  dtrace_sprunlock(p);
 } else {
  rval = EACCES;
 }

 lck_rw_unlock_shared(&dtrace_dof_mode_lock);

 return rval;
}
