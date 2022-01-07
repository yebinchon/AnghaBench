
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ stsy_underlying; int stsy_return_type; } ;
typedef TYPE_1__ systrace_sysent_t ;
struct sysent {scalar_t__ sy_callc; int sy_return_type; } ;


 int KM_SLEEP ;
 scalar_t__ LOADABLE_SYSCALL (struct sysent*) ;
 int LOADED_SYSCALL (struct sysent*) ;
 int NSYSCALL ;
 int dtrace_lck_attr ;
 int dtrace_lck_grp ;
 int dtrace_systrace_lock ;
 scalar_t__ dtrace_systrace_syscall ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int lck_mtx_init (int *,int ,int ) ;

__attribute__((used)) static void
systrace_init(struct sysent *actual, systrace_sysent_t **interposed)
{

 systrace_sysent_t *ssysent = *interposed;

 unsigned int i;

 if (ssysent == ((void*)0)) {
  *interposed = ssysent = kmem_zalloc(sizeof (systrace_sysent_t) *
      NSYSCALL, KM_SLEEP);
 }

 for (i = 0; i < NSYSCALL; i++) {
  struct sysent *a = &actual[i];
  systrace_sysent_t *s = &ssysent[i];

  if (LOADABLE_SYSCALL(a) && !LOADED_SYSCALL(a))
   continue;

  if (a->sy_callc == dtrace_systrace_syscall)
   continue;

  s->stsy_underlying = a->sy_callc;
  s->stsy_return_type = a->sy_return_type;
 }
 lck_mtx_init(&dtrace_systrace_lock, dtrace_lck_grp, dtrace_lck_attr);
}
