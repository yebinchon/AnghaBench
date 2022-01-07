
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lsp_name; int * lsp_func; scalar_t__ lsp_id; } ;
typedef TYPE_1__ lockstat_probe_t ;
typedef int dtrace_probedesc_t ;


 int ASSERT (int) ;
 int LOCKSTAT_AFRAMES ;
 scalar_t__ dtrace_probe_create (int ,char*,int *,int ,int ,TYPE_1__*) ;
 scalar_t__ dtrace_probe_lookup (int ,char*,int *,int ) ;
 int lockstat_id ;
 TYPE_1__* lockstat_probes ;

__attribute__((used)) static void
lockstat_provide(void *arg, const dtrace_probedesc_t *desc)
{
#pragma unused(arg, desc)

 int i = 0;

 for (i = 0; lockstat_probes[i].lsp_func != ((void*)0); i++) {
  lockstat_probe_t *probe = &lockstat_probes[i];

  if (dtrace_probe_lookup(lockstat_id, "mach_kernel",
      probe->lsp_func, probe->lsp_name) != 0)
   continue;

  ASSERT(!probe->lsp_id);
  probe->lsp_id = dtrace_probe_create(lockstat_id,
      "mach_kernel", probe->lsp_func, probe->lsp_name,
      LOCKSTAT_AFRAMES, probe);
 }
}
