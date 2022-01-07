
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_cc; } ;
struct tty {int t_state; int t_lowat; int t_hiwat; int t_wsel; int t_rsel; TYPE_1__ t_outq; } ;
typedef int proc_t ;


 int ENXIO ;
 int FMARK ;


 int TS_CONNECTED ;
 int TS_ZOMBIE ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int selrecord (int ,int *,void*) ;
 int ttnread (struct tty*) ;

int
ttyselect(struct tty *tp, int rw, void *wql, proc_t p)
{
 int retval = 0;





 bool needs_selrecord = rw & FMARK;
 rw &= ~FMARK;

 if (tp == ((void*)0)) {
  return ENXIO;
 }

 TTY_LOCK_OWNED(tp);

 if (tp->t_state & TS_ZOMBIE) {
  retval = 1;
  goto out;
 }

 switch (rw) {
 case 129:
  retval = ttnread(tp);
  if (retval > 0) {
   break;
  }

  selrecord(p, &tp->t_rsel, wql);
  break;
 case 128:
  if ((tp->t_outq.c_cc <= tp->t_lowat) &&
      (tp->t_state & TS_CONNECTED)) {
   retval = tp->t_hiwat - tp->t_outq.c_cc;
   break;
  }

  selrecord(p, &tp->t_wsel, wql);
  break;
 }

out:
 if (retval > 0 && needs_selrecord) {
  switch (rw) {
  case 129:
   selrecord(p, &tp->t_rsel, wql);
   break;
  case 128:
   selrecord(p, &tp->t_wsel, wql);
   break;
  }
 }

 return retval;
}
