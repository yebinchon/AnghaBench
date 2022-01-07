
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty {int dummy; } ;
struct TYPE_3__ {int si_note; } ;
struct TYPE_4__ {int si_note; } ;
struct ptmx_ioctl {TYPE_1__ pt_selw; TYPE_2__ pt_selr; struct tty* pt_tty; } ;
struct knote {int kn_filter; struct ptmx_ioctl* kn_hook; } ;




 int KNOTE_DETACH (int *,struct knote*) ;
 int assert (int ) ;
 int panic (char*,struct knote*,int) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttyfree (struct tty*) ;

__attribute__((used)) static void
ptmx_kqops_detach(struct knote *kn)
{
 struct ptmx_ioctl *pti = kn->kn_hook;
 struct tty *tp = pti->pt_tty;

 assert(tp != ((void*)0));

 tty_lock(tp);

 switch (kn->kn_filter) {
 case 129:
  KNOTE_DETACH(&pti->pt_selr.si_note, kn);
  break;

 case 128:
  KNOTE_DETACH(&pti->pt_selw.si_note, kn);
  break;

 default:
  panic("invalid knote %p detach, filter: %d", kn, kn->kn_filter);
  break;
 }

 kn->kn_hook = ((void*)0);
 tty_unlock(tp);

 ttyfree(tp);
}
