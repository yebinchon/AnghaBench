
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct module {int sdt_nprobes; } ;
struct modctl {scalar_t__ mod_loadcnt; scalar_t__ mod_mp; scalar_t__ mod_loaded; } ;
struct TYPE_4__ {scalar_t__ sdp_loadcnt; int sdp_namelen; struct TYPE_4__* sdp_next; struct TYPE_4__* sdp_name; struct TYPE_4__* sdp_hashnext; int sdp_patchpoint; struct modctl* sdp_ctl; } ;
typedef TYPE_1__ sdt_probe_t ;
typedef int dtrace_id_t ;


 int ASSERT (int ) ;
 int SDT_ADDR2NDX (int ) ;
 int kmem_free (TYPE_1__*,int) ;
 TYPE_1__** sdt_probetab ;

__attribute__((used)) static void
sdt_destroy(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id)
 sdt_probe_t *sdp = parg, *old, *last, *hash;
 int ndx;





 struct modctl *ctl = sdp->sdp_ctl;

 if (ctl != ((void*)0) && ctl->mod_loadcnt == sdp->sdp_loadcnt) {
  if ((ctl->mod_loadcnt == sdp->sdp_loadcnt &&
      ctl->mod_loaded)) {
   ((struct module *)(ctl->mod_mp))->sdt_nprobes--;
  }
 }


 while (sdp != ((void*)0)) {
  old = sdp;




  ndx = SDT_ADDR2NDX(sdp->sdp_patchpoint);
  last = ((void*)0);
  hash = sdt_probetab[ndx];

  while (hash != sdp) {
   ASSERT(hash != ((void*)0));
   last = hash;
   hash = hash->sdp_hashnext;
  }

  if (last != ((void*)0)) {
   last->sdp_hashnext = sdp->sdp_hashnext;
  } else {
   sdt_probetab[ndx] = sdp->sdp_hashnext;
  }

  kmem_free(sdp->sdp_name, sdp->sdp_namelen);
  sdp = sdp->sdp_next;
  kmem_free(old, sizeof (sdt_probe_t));
 }
}
