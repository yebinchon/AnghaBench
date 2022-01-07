
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modctl {struct modctl* mod_next; struct modctl* mod_stale; int mod_modname; scalar_t__ mod_loaded; } ;


 int ASSERT (int ) ;
 int KMOD_MAX_NAME ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 struct modctl* dtrace_modctl_list ;
 int mod_lock ;
 scalar_t__ strncmp (int ,int ,int ) ;

__attribute__((used)) static void
dtrace_modctl_add(struct modctl * newctl)
{
 struct modctl *nextp, *prevp;

 ASSERT(newctl != ((void*)0));
 LCK_MTX_ASSERT(&mod_lock, LCK_MTX_ASSERT_OWNED);



 newctl->mod_next = dtrace_modctl_list;
 dtrace_modctl_list = newctl;
 prevp = newctl;
 nextp = newctl->mod_next;

 while (nextp != ((void*)0)) {
  if (nextp->mod_loaded) {

   prevp = nextp;
   nextp = nextp->mod_next;
   continue;
  }
  else {

   if (strncmp (newctl->mod_modname, nextp->mod_modname, KMOD_MAX_NAME)) {

    prevp = nextp;
    nextp = nextp->mod_next;
    continue;
   }
   else {

    prevp->mod_next = nextp->mod_next;
    newctl->mod_stale = nextp;
    nextp->mod_next = ((void*)0);
    break;
   }
  }
 }
}
