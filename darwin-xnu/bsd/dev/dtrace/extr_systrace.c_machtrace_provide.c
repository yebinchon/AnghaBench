
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dtrace_probedesc_t ;
struct TYPE_3__ {void* stsy_return; void* stsy_entry; int * stsy_underlying; } ;


 void* DTRACE_IDNONE ;
 int MACHTRACE_ARTIFICIAL_FRAMES ;
 int NSYSCALL ;
 scalar_t__ SYSTRACE_ENTRY (int) ;
 scalar_t__ SYSTRACE_RETURN (int) ;
 int dtrace_probe_create (int ,int *,int ,char*,int ,void*) ;
 scalar_t__ dtrace_probe_lookup (int ,int *,int ,char*) ;
 int * mach_syscall_name_table ;
 int mach_trap_table ;
 int machtrace_id ;
 int machtrace_init (int ,TYPE_1__**) ;
 TYPE_1__* machtrace_sysent ;

__attribute__((used)) static void
machtrace_provide(void *arg, const dtrace_probedesc_t *desc)
{
#pragma unused(arg)

 int i;

 if (desc != ((void*)0))
  return;

 machtrace_init(mach_trap_table, &machtrace_sysent);

 for (i = 0; i < NSYSCALL; i++) {

  if (machtrace_sysent[i].stsy_underlying == ((void*)0))
   continue;

  if (dtrace_probe_lookup(machtrace_id, ((void*)0),
     mach_syscall_name_table[i], "entry") != 0)
   continue;

  (void) dtrace_probe_create(machtrace_id, ((void*)0), mach_syscall_name_table[i],
        "entry", MACHTRACE_ARTIFICIAL_FRAMES,
        (void *)((uintptr_t)SYSTRACE_ENTRY(i)));
  (void) dtrace_probe_create(machtrace_id, ((void*)0), mach_syscall_name_table[i],
        "return", MACHTRACE_ARTIFICIAL_FRAMES,
        (void *)((uintptr_t)SYSTRACE_RETURN(i)));

  machtrace_sysent[i].stsy_entry = DTRACE_IDNONE;
  machtrace_sysent[i].stsy_return = DTRACE_IDNONE;
 }
}
