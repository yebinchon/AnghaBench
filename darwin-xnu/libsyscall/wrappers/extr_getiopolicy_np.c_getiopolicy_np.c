
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _iopol_param_t {int iop_scope; int iop_iotype; int iop_policy; } ;


 int EINVAL ;
 int IOPOL_CMD_GET ;
 int IOPOL_SCOPE_PROCESS ;
 int IOPOL_SCOPE_THREAD ;
 int IOPOL_TYPE_DISK ;
 int IOPOL_TYPE_VFS_ATIME_UPDATES ;
 int __iopolicysys (int ,struct _iopol_param_t*) ;
 int errno ;

int
getiopolicy_np(int iotype, int scope)
{
 int policy, error;
 struct _iopol_param_t iop_param;

 if ((iotype != IOPOL_TYPE_DISK && iotype != IOPOL_TYPE_VFS_ATIME_UPDATES) ||
  (scope != IOPOL_SCOPE_PROCESS && scope != IOPOL_SCOPE_THREAD)) {
  errno = EINVAL;
  policy = -1;
  goto exit;
 }

 iop_param.iop_scope = scope;
 iop_param.iop_iotype = iotype;
 error = __iopolicysys(IOPOL_CMD_GET, &iop_param);
 if (error != 0) {
  errno = error;
  policy = -1;
  goto exit;
 }

 policy = iop_param.iop_policy;

  exit:
 return policy;
}
