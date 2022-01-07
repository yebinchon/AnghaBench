
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ user_ssize_t ;
typedef int u_int ;
typedef int u_char ;
struct uthread {int uu_sigmask; } ;
struct uio {int dummy; } ;
struct TYPE_7__ {int c_cc; } ;
struct tty {int t_hiwat; int t_column; int t_outcc; int t_timeout; int t_state; TYPE_5__ t_outq; int t_lflag; scalar_t__ t_rocount; int t_oflag; } ;
struct pgrp {scalar_t__ pg_jobc; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_6__ {int p_lflag; int p_sigignore; } ;


 int CCLASSMASK ;
 int EINTR ;
 int EIO ;
 int EWOULDBLOCK ;
 int FLUSHO ;
 int IO_NDELAY ;
 scalar_t__ ISSET (int ,int ) ;
 int MIN (scalar_t__,int) ;
 int OBUFSIZ ;
 int OPOST ;
 int PCATCH ;
 struct pgrp* PGRP_NULL ;
 int P_LPPWAIT ;
 int SET (int ,int ) ;
 int SIGTTOU ;
 int TOSTOP ;
 int TSA_CARR_ON (struct tty*) ;
 int TSA_OLOWAT (struct tty*) ;
 int TS_CONNECTED ;
 int TS_SO_OLOWAT ;
 int TS_ZOMBIE ;
 int TTIPRI ;
 int TTOPRI ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int b_to_q (int *,int,TYPE_5__*) ;
 int char_type ;
 TYPE_1__* current_proc () ;
 int current_thread () ;
 scalar_t__ get_bsdthread_info (int ) ;
 scalar_t__ isbackground (TYPE_1__*,struct tty*) ;
 int pg_rele (struct pgrp*) ;
 int pgsignal (struct pgrp*,int ,int) ;
 struct pgrp* proc_pgrp (TYPE_1__*) ;
 int scanc (int ,int *,int ,int ) ;
 int sigmask (int ) ;
 int tk_nout ;
 int ttstart (struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 scalar_t__ ttyoutput (char,struct tty*) ;
 int ttysleep (struct tty*,int ,int,char*,int ) ;
 scalar_t__ uio_resid (struct uio*) ;
 int uio_setresid (struct uio*,scalar_t__) ;
 int uiomove (char*,int,struct uio*) ;

int
ttwrite(struct tty *tp, struct uio *uio, int flag)
{
 char *cp = ((void*)0);
 int cc, ce;
 proc_t p;
 int i, hiwat, error;
 user_ssize_t count;
 char obuf[OBUFSIZ];
 struct uthread *ut;
 struct pgrp * pg;

 TTY_LOCK_OWNED(tp);

 ut = (struct uthread *)get_bsdthread_info(current_thread());
 hiwat = tp->t_hiwat;
 count = uio_resid(uio);
 error = 0;
 cc = 0;
loop:
 if (ISSET(tp->t_state, TS_ZOMBIE)) {
  if (uio_resid(uio) == count)
   error = EIO;
  goto out;
 }
 if (!ISSET(tp->t_state, TS_CONNECTED)) {
  if (flag & IO_NDELAY) {
   error = EWOULDBLOCK;
   goto out;
  }
  error = ttysleep(tp, TSA_CARR_ON(tp), TTIPRI | PCATCH,
     "ttydcd", 0);
  if (error) {
   goto out; }
  goto loop;
 }



 p = current_proc();
 if (isbackground(p, tp) &&
     ISSET(tp->t_lflag, TOSTOP) && (p->p_lflag & P_LPPWAIT) == 0 &&
     (p->p_sigignore & sigmask(SIGTTOU)) == 0 &&
     (ut->uu_sigmask & sigmask(SIGTTOU)) == 0) {

  pg = proc_pgrp(p);
  if (pg == PGRP_NULL) {
   error = EIO;
   goto out;
  }
  if (pg->pg_jobc == 0) {

   tty_unlock(tp);
   pg_rele(pg);
   tty_lock(tp);
   error = EIO;
   goto out;
  }

  tty_unlock(tp);
  pgsignal(pg, SIGTTOU, 1);
  pg_rele(pg);
  tty_lock(tp);






  error = EINTR;
   goto out;
 }





 while (uio_resid(uio) > 0 || cc > 0) {
  if (ISSET(tp->t_lflag, FLUSHO)) {
   uio_setresid(uio, 0);
   return (0);
  }
  if (tp->t_outq.c_cc > hiwat)
   goto ovhiwat;




  if (cc == 0) {
   cc = MIN(uio_resid(uio), OBUFSIZ);
   cp = obuf;
   error = uiomove(cp, cc, uio);
   if (error) {
    cc = 0;
    break;
   }
  }
  while (cc > 0) {
   if (!ISSET(tp->t_oflag, OPOST))
    ce = cc;
   else {
    ce = cc - scanc((u_int)cc, (u_char *)cp,
      char_type, CCLASSMASK);




    if (ce == 0) {
     tp->t_rocount = 0;
     if (ttyoutput(*cp, tp) >= 0) {

      goto overfull;
     }
     cp++;
     cc--;
     if (ISSET(tp->t_lflag, FLUSHO) ||
         tp->t_outq.c_cc > hiwat)
      goto ovhiwat;
     continue;
    }
   }
   tp->t_rocount = 0;
   i = b_to_q((u_char *)cp, ce, &tp->t_outq);
   ce -= i;
   tp->t_column += ce;
   cp += ce;
   cc -= ce;
   tk_nout += ce;
   tp->t_outcc += ce;
   if (i > 0) {

    goto overfull;
   }
   if (ISSET(tp->t_lflag, FLUSHO) ||
       tp->t_outq.c_cc > hiwat)
    break;
  }
  ttstart(tp);
 }
out:





 uio_setresid(uio, (uio_resid(uio) + cc));
 return (error);

overfull:







 hiwat = tp->t_outq.c_cc - 1;

ovhiwat:
 ttstart(tp);




 if (tp->t_outq.c_cc <= hiwat) {
  goto loop;
 }
 if (flag & IO_NDELAY) {
  uio_setresid(uio, (uio_resid(uio) + cc));
  return (uio_resid(uio) == count ? EWOULDBLOCK : 0);
 }
 SET(tp->t_state, TS_SO_OLOWAT);
 error = ttysleep(tp, TSA_OLOWAT(tp), TTOPRI | PCATCH, "ttywri",
    tp->t_timeout);
 if (error == EWOULDBLOCK)
  error = EIO;
 if (error)
  goto out;
 goto loop;
}
