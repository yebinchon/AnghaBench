
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct proc {int p_vfs_iopolicy; } ;
struct _iopol_param_t {int iop_policy; } ;
typedef int boolean_t ;


 int EINVAL ;
 int EPERM ;
 int FALSE ;





 int IOTaskHasEntitlement (int ,char*) ;
 int OSBitAndAtomic16 (int ,int*) ;
 int OSBitOrAtomic16 (int ,int*) ;
 int P_VFS_IOPOLICY_FORCE_HFS_CASE_SENSITIVITY ;
 int current_task () ;
 int kauth_cred_get () ;
 int kauth_cred_issuser (int ) ;

__attribute__((used)) static int
iopolicysys_vfs_hfs_case_sensitivity(struct proc *p, int cmd, int scope, int policy, struct _iopol_param_t *iop_param)
{
 int error = 0;


 switch (scope) {
  case 130:

   break;
  default:
   error = EINVAL;
   goto out;
 }


 if (cmd == 131) {
  switch (policy) {
   case 129:

   case 128:

    break;
   default:
    error = EINVAL;
    goto out;
  }
 }


 switch(cmd) {
  case 131:
   if (0 == kauth_cred_issuser(kauth_cred_get())) {

    boolean_t entitled = FALSE;
    entitled = IOTaskHasEntitlement(current_task(), "com.apple.private.iopol.case_sensitivity");
    if (!entitled) {
     error = EPERM;
     goto out;
    }
   }

   switch (policy) {
    case 129:
     OSBitAndAtomic16(~((uint32_t)P_VFS_IOPOLICY_FORCE_HFS_CASE_SENSITIVITY), &p->p_vfs_iopolicy);
     break;
    case 128:
     OSBitOrAtomic16((uint32_t)P_VFS_IOPOLICY_FORCE_HFS_CASE_SENSITIVITY, &p->p_vfs_iopolicy);
     break;
    default:
     error = EINVAL;
     goto out;
   }

   break;
  case 132:
   iop_param->iop_policy = (p->p_vfs_iopolicy & P_VFS_IOPOLICY_FORCE_HFS_CASE_SENSITIVITY)
    ? 128
    : 129;
   break;
  default:
   error = EINVAL;
   break;
 }

out:
 return (error);
}
