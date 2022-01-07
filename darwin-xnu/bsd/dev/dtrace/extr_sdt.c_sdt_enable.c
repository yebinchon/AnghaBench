
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_offset_t ;
struct modctl {scalar_t__ mod_loadcnt; int mod_modname; int mod_loaded; int mod_nenabled; } ;
struct TYPE_2__ {scalar_t__ sdp_loadcnt; struct TYPE_2__* sdp_next; scalar_t__ sdp_patchpoint; int sdp_patchval; int sdp_name; struct modctl* sdp_ctl; } ;
typedef TYPE_1__ sdt_probe_t ;
typedef scalar_t__ perfCallback ;
typedef int dtrace_id_t ;


 int CE_NOTE ;
 int cmn_err (int ,char*,int ,int ) ;
 int dtrace_casptr (scalar_t__*,int *,scalar_t__) ;
 scalar_t__ fbt_perfCallback ;
 int flush_dcache (int ,int ,int ) ;
 int invalidate_icache (int ,int ,int ) ;
 int ml_nofault_copy (int ,int ,int ) ;
 scalar_t__ sdt_verbose ;
 scalar_t__ tempDTraceTrapHook ;

__attribute__((used)) static int
sdt_enable(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id)
 sdt_probe_t *sdp = parg;
 struct modctl *ctl = sdp->sdp_ctl;

 ctl->mod_nenabled++;





 if (!ctl->mod_loaded) {
  if (sdt_verbose) {
   cmn_err(CE_NOTE, "sdt is failing for probe %s "
       "(module %s unloaded)",
       sdp->sdp_name, ctl->mod_modname);
  }
  goto err;
 }






 if (ctl->mod_loadcnt != sdp->sdp_loadcnt) {
  if (sdt_verbose) {
   cmn_err(CE_NOTE, "sdt is failing for probe %s "
       "(module %s reloaded)",
       sdp->sdp_name, ctl->mod_modname);
  }
  goto err;
 }

 dtrace_casptr(&tempDTraceTrapHook, ((void*)0), fbt_perfCallback);
 if (tempDTraceTrapHook != (perfCallback)fbt_perfCallback) {
  if (sdt_verbose) {
   cmn_err(CE_NOTE, "sdt_enable is failing for probe %s "
       "in module %s: tempDTraceTrapHook already occupied.",
       sdp->sdp_name, ctl->mod_modname);
  }
  return (0);
 }

 while (sdp != ((void*)0)) {
  (void)ml_nofault_copy( (vm_offset_t)&sdp->sdp_patchval, (vm_offset_t)sdp->sdp_patchpoint,
                         (vm_size_t)sizeof(sdp->sdp_patchval));





  flush_dcache((vm_offset_t)sdp->sdp_patchpoint,(vm_size_t)sizeof(sdp->sdp_patchval), 0);
  invalidate_icache((vm_offset_t)sdp->sdp_patchpoint,(vm_size_t)sizeof(sdp->sdp_patchval), 0);

  sdp = sdp->sdp_next;
 }

err:
 return (0);
}
