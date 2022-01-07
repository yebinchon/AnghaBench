
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_offset_t ;
struct modctl {scalar_t__ mod_nenabled; scalar_t__ mod_loadcnt; int mod_modname; int mod_loaded; } ;
typedef scalar_t__ perfCallback ;
struct TYPE_2__ {scalar_t__ fbtp_loadcnt; scalar_t__ fbtp_patchval; scalar_t__ fbtp_currentval; scalar_t__ fbtp_patchpoint; int fbtp_name; struct modctl* fbtp_ctl; struct TYPE_2__* fbtp_next; } ;
typedef TYPE_1__ fbt_probe_t ;
typedef int dtrace_id_t ;


 int ASSERT (int) ;
 int CE_NOTE ;
 int cmn_err (int ,char*,int ,int ) ;
 int dtrace_casptr (scalar_t__*,int *,scalar_t__) ;
 int dtrace_membar_consumer () ;
 scalar_t__ fbt_perfCallback ;
 scalar_t__ fbt_verbose ;
 int flush_dcache (int ,int ,int ) ;
 int invalidate_icache (int ,int ,int ) ;
 int ml_nofault_copy (int ,int ,int) ;
 scalar_t__ tempDTraceTrapHook ;

__attribute__((used)) static void
fbt_resume(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id)
 fbt_probe_t *fbt = parg;
 struct modctl *ctl = ((void*)0);

 for (; fbt != ((void*)0); fbt = fbt->fbtp_next) {
     ctl = fbt->fbtp_ctl;

     ASSERT(ctl->mod_nenabled > 0);
     if (!ctl->mod_loaded || (ctl->mod_loadcnt != fbt->fbtp_loadcnt))
  continue;

     dtrace_casptr(&tempDTraceTrapHook, ((void*)0), fbt_perfCallback);
     if (tempDTraceTrapHook != (perfCallback)fbt_perfCallback) {
  if (fbt_verbose) {
   cmn_err(CE_NOTE, "fbt_resume is failing for probe %s "
       "in module %s: tempDTraceTrapHook already occupied.",
       fbt->fbtp_name, ctl->mod_modname);
  }
  return;
     }

     (void)ml_nofault_copy( (vm_offset_t)&fbt->fbtp_patchval, (vm_offset_t)fbt->fbtp_patchpoint,
        sizeof(fbt->fbtp_patchval));




  flush_dcache((vm_offset_t)fbt->fbtp_patchpoint,(vm_size_t)sizeof(fbt->fbtp_patchval), 0);
  invalidate_icache((vm_offset_t)fbt->fbtp_patchpoint,(vm_size_t)sizeof(fbt->fbtp_patchval), 0);

       fbt->fbtp_currentval = fbt->fbtp_patchval;
 }

 dtrace_membar_consumer();
}
