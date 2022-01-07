
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct proc {int dummy; } ;
struct pfioc_limit {size_t index; int limit; } ;
struct TYPE_2__ {int limit; int * pp; } ;




 int EINVAL ;
 size_t PF_LIMIT_MAX ;
 int VERIFY (int ) ;
 TYPE_1__* pf_pool_limits ;
 int pool_sethardlimit (int *,int,int *,int ) ;

__attribute__((used)) static int
pfioctl_ioc_limit(u_long cmd, struct pfioc_limit *pl, struct proc *p)
{
#pragma unused(p)
 int error = 0;

 switch (cmd) {
 case 129: {

  if (pl->index < 0 || pl->index >= PF_LIMIT_MAX) {
   error = EINVAL;
   goto fail;
  }
  pl->limit = pf_pool_limits[pl->index].limit;
  break;
 }

 case 128: {
  int old_limit;

  if (pl->index < 0 || pl->index >= PF_LIMIT_MAX ||
      pf_pool_limits[pl->index].pp == ((void*)0)) {
   error = EINVAL;
   goto fail;
  }
  pool_sethardlimit(pf_pool_limits[pl->index].pp,
      pl->limit, ((void*)0), 0);
  old_limit = pf_pool_limits[pl->index].limit;
  pf_pool_limits[pl->index].limit = pl->limit;
  pl->limit = old_limit;
  break;
 }

 default:
  VERIFY(0);

 }
fail:
 return (error);
}
