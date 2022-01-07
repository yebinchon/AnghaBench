
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modctl {int * mod_user_symbols; struct modctl* mod_next; struct modctl* mod_stale; } ;
typedef struct modctl modctl_t ;


 int ASSERT (int ) ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 struct modctl* dtrace_modctl_list ;
 int kmem_free (struct modctl*,int) ;
 int mod_lock ;

__attribute__((used)) static void
dtrace_modctl_remove(struct modctl * ctl)
{
 ASSERT(ctl != ((void*)0));
 LCK_MTX_ASSERT(&mod_lock, LCK_MTX_ASSERT_OWNED);
 modctl_t *prevp, *nextp, *curp;


 for (curp=ctl->mod_stale; curp != ((void*)0); curp=nextp) {
  nextp = curp->mod_stale;

  ASSERT(curp->mod_user_symbols == ((void*)0));
  kmem_free(curp, sizeof(modctl_t));
 }

 prevp = ((void*)0);
 curp = dtrace_modctl_list;

 while (curp != ctl) {
  prevp = curp;
  curp = curp->mod_next;
 }

 if (prevp != ((void*)0)) {
  prevp->mod_next = ctl->mod_next;
 }
 else {
  dtrace_modctl_list = ctl->mod_next;
 }


 ASSERT(ctl->mod_user_symbols == ((void*)0));

 kmem_free (ctl, sizeof(modctl_t));
}
