
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct proc {int dummy; } ;
struct pfioc_tm {size_t timeout; int seconds; } ;
struct TYPE_2__ {int* timeout; } ;




 int EINVAL ;
 size_t PFTM_INTERVAL ;
 size_t PFTM_MAX ;
 int VERIFY (int ) ;
 TYPE_1__ pf_default_rule ;
 int pf_purge_thread_fn ;
 int wakeup (int ) ;

__attribute__((used)) static int
pfioctl_ioc_tm(u_long cmd, struct pfioc_tm *pt, struct proc *p)
{
#pragma unused(p)
 int error = 0;

 switch (cmd) {
 case 128: {
  int old;

  if (pt->timeout < 0 || pt->timeout >= PFTM_MAX ||
      pt->seconds < 0) {
   error = EINVAL;
   goto fail;
  }
  old = pf_default_rule.timeout[pt->timeout];
  if (pt->timeout == PFTM_INTERVAL && pt->seconds == 0)
   pt->seconds = 1;
  pf_default_rule.timeout[pt->timeout] = pt->seconds;
  if (pt->timeout == PFTM_INTERVAL && pt->seconds < old)
   wakeup(pf_purge_thread_fn);
  pt->seconds = old;
  break;
 }

 case 129: {
  if (pt->timeout < 0 || pt->timeout >= PFTM_MAX) {
   error = EINVAL;
   goto fail;
  }
  pt->seconds = pf_default_rule.timeout[pt->timeout];
  break;
 }

 default:
  VERIFY(0);

 }
fail:
 return (error);
}
