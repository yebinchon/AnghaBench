
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int c_cc; } ;
struct tty {int t_lowat; int t_hiwat; int t_wsel; TYPE_1__ t_outq; int t_state; int t_rsel; } ;
struct ptmx_ioctl {struct tty* pt_tty; } ;
typedef int proc_t ;
typedef int dev_t ;


 int ENXIO ;


 int ISSET (int ,int ) ;
 int TS_CONNECTED ;
 int TS_ZOMBIE ;
 struct ptmx_ioctl* pty_get_ioctl (int ,int ,int *) ;
 int selrecord (int ,int *,void*) ;
 int ttnread (struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;

int
ptsselect(dev_t dev, int rw, void *wql, proc_t p)
{
 struct ptmx_ioctl *pti = pty_get_ioctl(dev, 0, ((void*)0));
 struct tty *tp;
 int retval = 0;

 if (pti == ((void*)0))
  return (ENXIO);
 tp = pti->pt_tty;
 if (tp == ((void*)0))
  return (ENXIO);

 tty_lock(tp);

 switch (rw) {
 case 129:
  if (ISSET(tp->t_state, TS_ZOMBIE)) {
   retval = 1;
   break;
  }

  retval = ttnread(tp);
  if (retval > 0) {
   break;
  }

  selrecord(p, &tp->t_rsel, wql);
  break;
 case 128:
  if (ISSET(tp->t_state, TS_ZOMBIE)) {
   retval = 1;
   break;
  }

  if ((tp->t_outq.c_cc <= tp->t_lowat) &&
    ISSET(tp->t_state, TS_CONNECTED)) {
   retval = tp->t_hiwat - tp->t_outq.c_cc;
   break;
  }

  selrecord(p, &tp->t_wsel, wql);
  break;
 }

 tty_unlock(tp);
 return (retval);
}
