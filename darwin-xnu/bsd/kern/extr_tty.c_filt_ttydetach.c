
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct selinfo {int si_note; } ;
struct tty {struct selinfo t_wsel; struct selinfo t_rsel; } ;
struct knote {int * kn_hook; } ;


 int ENOENT ;


 int KNOTE_DETACH (int *,struct knote*) ;
 int knote_get_seltype (struct knote*) ;
 int knote_set_error (struct knote*,int ) ;
 struct tty* tty_lock_from_knote (struct knote*) ;
 int tty_unlock (struct tty*) ;
 int ttyfree (struct tty*) ;

__attribute__((used)) static void
filt_ttydetach(struct knote *kn)
{
 struct tty *tp;

 tp = tty_lock_from_knote(kn);
 if (!tp) {
  knote_set_error(kn, ENOENT);
  return;
 }

 struct selinfo *si = ((void*)0);
 switch (knote_get_seltype(kn)) {
 case 129:
  si = &tp->t_rsel;
  break;
 case 128:
  si = &tp->t_wsel;
  break;

 }

 KNOTE_DETACH(&si->si_note, kn);
 kn->kn_hook = ((void*)0);

 tty_unlock(tp);
 ttyfree(tp);
}
