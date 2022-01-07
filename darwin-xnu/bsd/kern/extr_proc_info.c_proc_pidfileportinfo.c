
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int user_addr_t ;
typedef scalar_t__ uint32_t ;
struct fileport_info_args {int fia_flavor; int * fia_retval; scalar_t__ fia_buffersize; int fia_buffer; } ;
typedef TYPE_1__* proc_t ;
typedef int mach_port_name_t ;
typedef int int32_t ;
struct TYPE_6__ {int task; } ;


 int CHECK_SAME_USER ;
 int EINVAL ;
 int ENOMEM ;
 int ENOTSUP ;
 int ESRCH ;
 scalar_t__ KERN_SUCCESS ;
 int PROC_INFO_CALL_PIDFILEPORTINFO ;
 TYPE_1__* PROC_NULL ;

 scalar_t__ PROC_PIDFILEPORTPIPEINFO_SIZE ;

 scalar_t__ PROC_PIDFILEPORTPSHMINFO_SIZE ;

 scalar_t__ PROC_PIDFILEPORTSOCKETINFO_SIZE ;

 scalar_t__ PROC_PIDFILEPORTVNODEPATHINFO_SIZE ;
 scalar_t__ fileport_invoke (int ,int ,int ,struct fileport_info_args*,int*) ;
 int proc_fileport_info ;
 TYPE_1__* proc_find (int) ;
 int proc_rele (TYPE_1__*) ;
 int proc_security_policy (TYPE_1__*,int ,int,int ) ;

int
proc_pidfileportinfo(int pid, int flavor, mach_port_name_t name,
 user_addr_t buffer, uint32_t buffersize, int32_t *retval)
{
 proc_t p;
 int error = ENOTSUP;
 uint32_t size;
 struct fileport_info_args fia;



 switch (flavor) {
 case 128:
  size = PROC_PIDFILEPORTVNODEPATHINFO_SIZE;
  break;
 case 129:
  size = PROC_PIDFILEPORTSOCKETINFO_SIZE;
  break;
 case 130:
  size = PROC_PIDFILEPORTPSHMINFO_SIZE;
  break;
 case 131:
  size = PROC_PIDFILEPORTPIPEINFO_SIZE;
  break;
 default:
  return (EINVAL);
 }

 if (buffersize < size)
  return (ENOMEM);
 if ((p = proc_find(pid)) == PROC_NULL) {
  error = ESRCH;
  goto out;
 }


 if ((error = proc_security_policy(p, PROC_INFO_CALL_PIDFILEPORTINFO, flavor, CHECK_SAME_USER)))
  goto out1;

 fia.fia_flavor = flavor;
 fia.fia_buffer = buffer;
 fia.fia_buffersize = buffersize;
 fia.fia_retval = retval;

 if (fileport_invoke(p->task, name,
     proc_fileport_info, &fia, &error) != KERN_SUCCESS)
  error = EINVAL;
out1:
 proc_rele(p);
out:
 return (error);
}
