
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ user_addr_t ;
typedef int uint32_t ;
typedef scalar_t__ proc_t ;
typedef int kqueue_id_t ;
typedef int int32_t ;


 int CHECK_SAME_USER ;
 int EFAULT ;
 int ENOTSUP ;
 int ESRCH ;
 int PROC_INFO_CALL_PIDDYNKQUEUEINFO ;
 scalar_t__ PROC_NULL ;


 scalar_t__ USER_ADDR_NULL ;
 int kevent_copyout_dynkqextinfo (scalar_t__,int ,scalar_t__,int ,int *) ;
 int kevent_copyout_dynkqinfo (scalar_t__,int ,scalar_t__,int ,int *) ;
 scalar_t__ proc_find (int) ;
 int proc_rele (scalar_t__) ;
 int proc_security_policy (scalar_t__,int ,int ,int ) ;

int
proc_piddynkqueueinfo(int pid, int flavor, kqueue_id_t kq_id,
  user_addr_t ubuf, uint32_t bufsize, int32_t *retval)
{
 proc_t p;
 int err;

 if (ubuf == USER_ADDR_NULL) {
  return EFAULT;
 }

 p = proc_find(pid);
 if (p == PROC_NULL) {
  return ESRCH;
 }

 err = proc_security_policy(p, PROC_INFO_CALL_PIDDYNKQUEUEINFO, 0, CHECK_SAME_USER);
 if (err) {
  goto out;
 }

 switch (flavor) {
 case 128:
  err = kevent_copyout_dynkqinfo(p, kq_id, ubuf, bufsize, retval);
  break;
 case 129:
  err = kevent_copyout_dynkqextinfo(p, kq_id, ubuf, bufsize, retval);
  break;
 default:
  err = ENOTSUP;
  break;
 }

out:
 proc_rele(p);

 return err;
}
