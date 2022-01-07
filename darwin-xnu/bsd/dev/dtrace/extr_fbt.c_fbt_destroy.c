
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* fbtp_next; struct TYPE_4__* fbtp_hashnext; int fbtp_patchpoint; } ;
typedef TYPE_1__ fbt_probe_t ;
typedef int dtrace_id_t ;


 int ASSERT (int ) ;
 int FBT_ADDR2NDX (int ) ;
 TYPE_1__** fbt_probetab ;
 int kmem_free (TYPE_1__*,int) ;

__attribute__((used)) static void
fbt_destroy(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id)
 fbt_probe_t *fbt = parg, *next, *hash, *last;
 int ndx;

 do {



  ndx = FBT_ADDR2NDX(fbt->fbtp_patchpoint);
  last = ((void*)0);
  hash = fbt_probetab[ndx];

  while (hash != fbt) {
   ASSERT(hash != ((void*)0));
   last = hash;
   hash = hash->fbtp_hashnext;
  }

  if (last != ((void*)0)) {
   last->fbtp_hashnext = fbt->fbtp_hashnext;
  } else {
   fbt_probetab[ndx] = fbt->fbtp_hashnext;
  }

  next = fbt->fbtp_next;
  kmem_free(fbt, sizeof (fbt_probe_t));

  fbt = next;
 } while (fbt != ((void*)0));
}
