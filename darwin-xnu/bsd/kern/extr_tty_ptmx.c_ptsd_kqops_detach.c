
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int si_note; } ;
struct TYPE_4__ {int si_note; } ;
struct tty {int t_state; TYPE_1__ t_wsel; TYPE_2__ t_rsel; } ;
struct knote {int kn_filter; struct tty* kn_hook; } ;




 int KNOTE_DETACH (int *,struct knote*) ;
 int TS_ISOPEN ;
 int assert (int ) ;
 int panic (char*,struct knote*,int) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttyfree (struct tty*) ;

__attribute__((used)) static void
ptsd_kqops_detach(struct knote *kn)
{
 struct tty *tp;

 tp = kn->kn_hook;
 assert(tp != ((void*)0));

 tty_lock(tp);





 if (tp->t_state & TS_ISOPEN) {
  switch (kn->kn_filter) {
  case 129:
   KNOTE_DETACH(&tp->t_rsel.si_note, kn);
   break;

  case 128:
   KNOTE_DETACH(&tp->t_wsel.si_note, kn);
   break;

  default:
   panic("invalid knote %p detach, filter: %d", kn, kn->kn_filter);
   break;
  }
 }

 kn->kn_hook = ((void*)0);
 tty_unlock(tp);

 ttyfree(tp);
}
