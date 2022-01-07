
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int uint64_t ;
typedef int hdr ;
struct TYPE_7__ {int dofh_loadsz; } ;
typedef TYPE_1__ dof_hdr_t ;


 int E2BIG ;
 int EFAULT ;
 int EINVAL ;
 int KM_SLEEP ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 scalar_t__ copyin (int ,TYPE_1__*,int) ;
 int dtrace_dof_error (TYPE_1__*,char*) ;
 scalar_t__ dtrace_dof_maxsize ;
 int dtrace_lock ;
 TYPE_1__* kmem_alloc_aligned (int,int,int ) ;
 int kmem_free_aligned (TYPE_1__*,int) ;

__attribute__((used)) static dof_hdr_t *
dtrace_dof_copyin(user_addr_t uarg, int *errp)
{
 dof_hdr_t hdr, *dof;

 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_NOTOWNED);




 if (copyin(uarg, &hdr, sizeof (hdr)) != 0) {
  dtrace_dof_error(((void*)0), "failed to copyin DOF header");
  *errp = EFAULT;
  return (((void*)0));
 }





 if (hdr.dofh_loadsz >= (uint64_t)dtrace_dof_maxsize) {
  dtrace_dof_error(&hdr, "load size exceeds maximum");
  *errp = E2BIG;
  return (((void*)0));
 }

 if (hdr.dofh_loadsz < sizeof (hdr)) {
  dtrace_dof_error(&hdr, "invalid load size");
  *errp = EINVAL;
  return (((void*)0));
 }

 dof = kmem_alloc_aligned(hdr.dofh_loadsz, 8, KM_SLEEP);

        if (copyin(uarg, dof, hdr.dofh_loadsz) != 0 ||
   dof->dofh_loadsz != hdr.dofh_loadsz) {
     kmem_free_aligned(dof, hdr.dofh_loadsz);
     *errp = EFAULT;
     return (((void*)0));
 }

 return (dof);
}
