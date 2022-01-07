
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dtrace_probedesc_t ;
struct TYPE_3__ {void* stsy_return; void* stsy_entry; int * stsy_underlying; } ;


 void* DTRACE_IDNONE ;
 unsigned int NSYSCALL ;
 int SYSTRACE_ARTIFICIAL_FRAMES ;
 scalar_t__ SYSTRACE_ENTRY (unsigned int) ;
 scalar_t__ SYSTRACE_RETURN (unsigned int) ;
 int dtrace_probe_create (int ,int *,int ,char*,int ,void*) ;
 scalar_t__ dtrace_probe_lookup (int ,int *,int ,char*) ;
 int * syscallnames ;
 int sysent ;
 int systrace_id ;
 int systrace_init (int ,TYPE_1__**) ;
 TYPE_1__* systrace_sysent ;

__attribute__((used)) static void
systrace_provide(void *arg, const dtrace_probedesc_t *desc)
{
#pragma unused(arg)
 unsigned int i;

 if (desc != ((void*)0))
  return;

 systrace_init(sysent, &systrace_sysent);

 for (i = 0; i < NSYSCALL; i++) {
  if (systrace_sysent[i].stsy_underlying == ((void*)0))
   continue;

  if (dtrace_probe_lookup(systrace_id, ((void*)0),
      syscallnames[i], "entry") != 0)
   continue;

  (void) dtrace_probe_create(systrace_id, ((void*)0), syscallnames[i],
      "entry", SYSTRACE_ARTIFICIAL_FRAMES,
      (void *)((uintptr_t)SYSTRACE_ENTRY(i)));
  (void) dtrace_probe_create(systrace_id, ((void*)0), syscallnames[i],
      "return", SYSTRACE_ARTIFICIAL_FRAMES,
      (void *)((uintptr_t)SYSTRACE_RETURN(i)));

  systrace_sysent[i].stsy_entry = DTRACE_IDNONE;
  systrace_sysent[i].stsy_return = DTRACE_IDNONE;
 }
}
