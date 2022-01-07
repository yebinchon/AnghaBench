
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqueue_workloop_params {int kqwlp_version; int kqwlp_id; } ;
struct kqueue_workloop_ctl_args {int sz; int options; int cmd; int addr; } ;
typedef int proc_t ;
typedef int params ;


 int EINVAL ;
 size_t MIN (int,int) ;
 int copyin (int ,struct kqueue_workloop_params*,size_t) ;
 int kqueue_workloop_ctl_internal (int ,int ,int ,struct kqueue_workloop_params*,int*) ;

int
kqueue_workloop_ctl(proc_t p, struct kqueue_workloop_ctl_args *uap, int *retval)
{
 struct kqueue_workloop_params params = {
  .kqwlp_id = 0,
 };
 if (uap->sz < sizeof(params.kqwlp_version)) {
  return EINVAL;
 }

 size_t copyin_sz = MIN(sizeof(params), uap->sz);
 int rv = copyin(uap->addr, &params, copyin_sz);
 if (rv) {
  return rv;
 }

 if (params.kqwlp_version != (int)uap->sz) {
  return EINVAL;
 }

 return kqueue_workloop_ctl_internal(p, uap->cmd, uap->options, &params,
   retval);
}
