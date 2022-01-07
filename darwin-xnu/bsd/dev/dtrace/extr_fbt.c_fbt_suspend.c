
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_offset_t ;
struct modctl {scalar_t__ mod_nenabled; scalar_t__ mod_loadcnt; int mod_loaded; } ;
struct TYPE_2__ {scalar_t__ fbtp_loadcnt; scalar_t__ fbtp_savedval; scalar_t__ fbtp_currentval; scalar_t__ fbtp_patchpoint; struct modctl* fbtp_ctl; struct TYPE_2__* fbtp_next; } ;
typedef TYPE_1__ fbt_probe_t ;
typedef int dtrace_id_t ;


 int ASSERT (int) ;
 int dtrace_membar_consumer () ;
 int flush_dcache (int ,int ,int ) ;
 int invalidate_icache (int ,int ,int ) ;
 int ml_nofault_copy (int ,int ,int) ;

__attribute__((used)) static void
fbt_suspend(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id)
 fbt_probe_t *fbt = parg;
 struct modctl *ctl = ((void*)0);

 for (; fbt != ((void*)0); fbt = fbt->fbtp_next) {
     ctl = fbt->fbtp_ctl;

     ASSERT(ctl->mod_nenabled > 0);
     if (!ctl->mod_loaded || (ctl->mod_loadcnt != fbt->fbtp_loadcnt))
  continue;

     (void)ml_nofault_copy( (vm_offset_t)&fbt->fbtp_savedval, (vm_offset_t)fbt->fbtp_patchpoint,
        sizeof(fbt->fbtp_savedval));





  flush_dcache((vm_offset_t)fbt->fbtp_patchpoint,(vm_size_t)sizeof(fbt->fbtp_savedval), 0);
  invalidate_icache((vm_offset_t)fbt->fbtp_patchpoint,(vm_size_t)sizeof(fbt->fbtp_savedval), 0);

  fbt->fbtp_currentval = fbt->fbtp_savedval;
 }

 dtrace_membar_consumer();
}
