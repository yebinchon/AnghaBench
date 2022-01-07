
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ state; } ;
typedef TYPE_1__ x86_lcpu_t ;
typedef int uint32_t ;
struct TYPE_7__ {int (* pmCPUSafeMode ) (TYPE_1__*,int) ;} ;


 scalar_t__ LCPU_PAUSE ;
 scalar_t__ LCPU_RUN ;
 int PM_SAFE_FL_PAUSE ;
 int PM_SAFE_FL_RESUME ;
 int cpu_pause () ;
 TYPE_5__* pmDispatch ;
 int stub1 (TYPE_1__*,int) ;
 TYPE_1__* x86_lcpu () ;

void
pmSafeMode(x86_lcpu_t *lcpu, uint32_t flags)
{
    if (pmDispatch != ((void*)0)
 && pmDispatch->pmCPUSafeMode != ((void*)0))
 pmDispatch->pmCPUSafeMode(lcpu, flags);
    else {
 if (flags & PM_SAFE_FL_PAUSE) {
     lcpu->state = LCPU_PAUSE;
     if (lcpu == x86_lcpu()) {
  while (lcpu->state == LCPU_PAUSE)
      cpu_pause();
     }
 }





 if (flags & PM_SAFE_FL_RESUME) {
     lcpu->state = LCPU_RUN;
 }
    }
}
