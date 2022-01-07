
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
struct iopolicysys_args {scalar_t__ cmd; int arg; } ;
struct _iopol_param_t {int iop_iotype; int iop_policy; int iop_scope; } ;
typedef int iop_param ;
typedef int int32_t ;
typedef int caddr_t ;


 int EIDRM ;
 int EINVAL ;
 scalar_t__ IOPOL_CMD_GET ;



 int copyin (int ,struct _iopol_param_t*,int) ;
 int copyout (int ,int ,int) ;
 int iopolicysys_disk (struct proc*,scalar_t__,int ,int ,struct _iopol_param_t*) ;
 int iopolicysys_vfs_atime_updates (struct proc*,scalar_t__,int ,int ,struct _iopol_param_t*) ;
 int iopolicysys_vfs_hfs_case_sensitivity (struct proc*,scalar_t__,int ,int ,struct _iopol_param_t*) ;

int
iopolicysys(struct proc *p, struct iopolicysys_args *uap, int32_t *retval)
{
 int error = 0;
 struct _iopol_param_t iop_param;

 if ((error = copyin(uap->arg, &iop_param, sizeof(iop_param))) != 0)
  goto out;

 switch (iop_param.iop_iotype) {
  case 130:
   error = iopolicysys_disk(p, uap->cmd, iop_param.iop_scope, iop_param.iop_policy, &iop_param);
   if (error == EIDRM) {
    *retval = -2;
    error = 0;
   }
   if (error)
    goto out;
   break;
  case 128:
   error = iopolicysys_vfs_hfs_case_sensitivity(p, uap->cmd, iop_param.iop_scope, iop_param.iop_policy, &iop_param);
   if (error)
    goto out;
   break;
  case 129:
   error = iopolicysys_vfs_atime_updates(p, uap->cmd, iop_param.iop_scope, iop_param.iop_policy, &iop_param);
   if (error)
    goto out;
   break;
  default:
   error = EINVAL;
   goto out;
 }


 if (uap->cmd == IOPOL_CMD_GET) {
  error = copyout((caddr_t)&iop_param, uap->arg, sizeof(iop_param));
  if (error)
   goto out;
 }

out:
 return (error);
}
