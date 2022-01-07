
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_offset_t ;
struct modctl {scalar_t__ mod_loadcnt; int mod_loaded; int mod_nenabled; } ;
struct TYPE_2__ {scalar_t__ sdp_loadcnt; struct TYPE_2__* sdp_next; scalar_t__ sdp_patchpoint; int sdp_savedval; struct modctl* sdp_ctl; } ;
typedef TYPE_1__ sdt_probe_t ;
typedef int dtrace_id_t ;


 int flush_dcache (int ,int ,int ) ;
 int invalidate_icache (int ,int ,int ) ;
 int ml_nofault_copy (int ,int ,int ) ;

__attribute__((used)) static void
sdt_disable(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id)
 sdt_probe_t *sdp = parg;
 struct modctl *ctl = sdp->sdp_ctl;

 ctl->mod_nenabled--;

 if (!ctl->mod_loaded || ctl->mod_loadcnt != sdp->sdp_loadcnt)
  goto err;

 while (sdp != ((void*)0)) {
  (void)ml_nofault_copy( (vm_offset_t)&sdp->sdp_savedval, (vm_offset_t)sdp->sdp_patchpoint,
                         (vm_size_t)sizeof(sdp->sdp_savedval));




  flush_dcache((vm_offset_t)sdp->sdp_patchpoint,(vm_size_t)sizeof(sdp->sdp_savedval), 0);
  invalidate_icache((vm_offset_t)sdp->sdp_patchpoint,(vm_size_t)sizeof(sdp->sdp_savedval), 0);
  sdp = sdp->sdp_next;
 }

err:
 ;
}
