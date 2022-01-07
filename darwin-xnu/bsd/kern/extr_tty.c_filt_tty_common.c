
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_cc; } ;
struct tty {int t_state; int t_lowat; int t_hiwat; TYPE_1__ t_outq; } ;
struct knote {int kn_data; int kn_flags; } ;


 int EV_EOF ;


 int TS_CONNECTED ;
 int TS_ZOMBIE ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int knote_get_seltype (struct knote*) ;
 int ttnread (struct tty*) ;

__attribute__((used)) static int
filt_tty_common(struct knote *kn, struct tty *tp)
{
 int retval = 0;

 TTY_LOCK_OWNED(tp);

 if (tp->t_state & TS_ZOMBIE) {
  kn->kn_flags |= EV_EOF;
  return 1;
 }

 switch (knote_get_seltype(kn)) {
 case 129:
  retval = ttnread(tp);
  break;
 case 128:
  if ((tp->t_outq.c_cc <= tp->t_lowat) &&
      (tp->t_state & TS_CONNECTED)) {
   retval = tp->t_hiwat - tp->t_outq.c_cc;
  }
  break;
 }

 kn->kn_data = retval;
 return retval;
}
