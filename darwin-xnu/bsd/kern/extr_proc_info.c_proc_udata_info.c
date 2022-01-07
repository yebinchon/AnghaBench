
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int user_addr_t ;
typedef int uint32_t ;
typedef TYPE_1__* proc_t ;
typedef scalar_t__ int32_t ;
struct TYPE_5__ {scalar_t__ p_pid; int p_user_data; } ;


 int EACCES ;
 int EINVAL ;
 int ENOTSUP ;
 int ESRCH ;
 TYPE_1__* PROC_NULL ;


 int copyin (int ,int *,int) ;
 int copyout (int *,int ,int) ;
 TYPE_1__* proc_find (int) ;
 int proc_rele (TYPE_1__*) ;
 scalar_t__ proc_selfpid () ;

int
proc_udata_info(int pid, int flavor, user_addr_t buffer, uint32_t bufsize, int32_t *retval)
{
 int err = 0;
 proc_t p;

 p = proc_find(pid);
 if (p == PROC_NULL) {
  return ESRCH;
 }




 if (p->p_pid != proc_selfpid()) {
  err = EACCES;
  goto out;
 }

 if (bufsize != sizeof (p->p_user_data)) {
  err = EINVAL;
  goto out;
 }

 switch (flavor) {
 case 128:
  err = copyin(buffer, &p->p_user_data, sizeof (p->p_user_data));
  break;
 case 129:
  err = copyout(&p->p_user_data, buffer, sizeof (p->p_user_data));
  break;
 default:
  err = ENOTSUP;
  break;
 }

out:
 proc_rele(p);

 if (err == 0) {
  *retval = 0;
 }

 return err;
}
