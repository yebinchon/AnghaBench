
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _iopol_param_t {int iop_scope; int iop_iotype; int iop_policy; } ;


 int IOPOL_CMD_SET ;
 int MACH_PORT_NULL ;
 int __iopolicysys (int ,struct _iopol_param_t*) ;
 int _pthread_clear_qos_tsd (int ) ;

int
setiopolicy_np(int iotype, int scope, int policy)
{

 struct _iopol_param_t iop_param;

 iop_param.iop_scope = scope;
 iop_param.iop_iotype = iotype;
 iop_param.iop_policy = policy;

 int rv = __iopolicysys(IOPOL_CMD_SET, &iop_param);
 if (rv == -2) {

        _pthread_clear_qos_tsd(MACH_PORT_NULL);
  rv = 0;
 }

 return rv;
}
