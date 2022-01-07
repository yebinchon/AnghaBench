
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct tty {int t_flags; void* t_ospeed; void* t_ispeed; } ;
struct termios {int* c_cc; void* c_ospeed; void* c_ispeed; } ;
struct tchars {int t_intrc; int t_quitc; int t_startc; int t_stopc; int t_eofc; int t_brkc; } ;
struct sgttyb {int sg_ispeed; int sg_ospeed; int sg_erase; int sg_kill; int sg_flags; } ;
struct ltchars {int t_suspc; int t_dsuspc; int t_rprntc; int t_flushc; int t_werasc; int t_lnextc; } ;
typedef int cc_t ;
typedef scalar_t__ caddr_t ;


 int EINVAL ;
 int MAX_SPEED ;



 int TIOCSETA ;
 int TIOCSETAF ;




 size_t VDISCARD ;
 size_t VDSUSP ;
 size_t VEOF ;
 size_t VEOL ;
 size_t VEOL2 ;
 size_t VERASE ;
 size_t VINTR ;
 size_t VKILL ;
 size_t VLNEXT ;
 size_t VQUIT ;
 size_t VREPRINT ;
 size_t VSTART ;
 size_t VSTOP ;
 size_t VSUSP ;
 size_t VWERASE ;
 int _POSIX_VDISABLE ;
 void** compatspcodes ;
 int compatspeeds ;
 int ttcompatgetflags (struct tty*) ;
 int ttcompatsetflags (struct tty*,struct termios*) ;
 int ttcompatsetlflags (struct tty*,struct termios*) ;
 int ttcompatspeedtab (void*,int ) ;

__attribute__((used)) static int
ttsetcompat(struct tty *tp, u_long *com, caddr_t data, struct termios *term)
{
 switch (*com) {
 case 129:






 case 130:




     {
  struct sgttyb *sg = (struct sgttyb *)data;
  int speed;

  if ((speed = sg->sg_ispeed) > MAX_SPEED || speed < 0)
   return(EINVAL);
  else if (speed != ttcompatspeedtab(tp->t_ispeed, compatspeeds))
   term->c_ispeed = compatspcodes[speed];
  else
   term->c_ispeed = tp->t_ispeed;
  if ((speed = sg->sg_ospeed) > MAX_SPEED || speed < 0)
   return(EINVAL);
  else if (speed != ttcompatspeedtab(tp->t_ospeed, compatspeeds))
   term->c_ospeed = compatspcodes[speed];
  else
   term->c_ospeed = tp->t_ospeed;
  term->c_cc[VERASE] = sg->sg_erase;
  term->c_cc[VKILL] = sg->sg_kill;
  tp->t_flags = (tp->t_flags&0xffff0000) | (sg->sg_flags&0xffff);
  ttcompatsetflags(tp, term);
  *com = (*com == 129) ? TIOCSETAF : TIOCSETA;
  break;
 }
 case 131:




     {
  struct tchars *tc = (struct tchars *)data;
  cc_t *cc;

  cc = term->c_cc;
  cc[VINTR] = tc->t_intrc;
  cc[VQUIT] = tc->t_quitc;
  cc[VSTART] = tc->t_startc;
  cc[VSTOP] = tc->t_stopc;
  cc[VEOF] = tc->t_eofc;
  cc[VEOL] = tc->t_brkc;
  if (tc->t_brkc == -1)
   cc[VEOL2] = _POSIX_VDISABLE;
  *com = TIOCSETA;
  break;
 }
 case 128:




 {
  struct ltchars *ltc = (struct ltchars *)data;
  cc_t *cc;

  cc = term->c_cc;
  cc[VSUSP] = ltc->t_suspc;
  cc[VDSUSP] = ltc->t_dsuspc;
  cc[VREPRINT] = ltc->t_rprntc;
  cc[VDISCARD] = ltc->t_flushc;
  cc[VWERASE] = ltc->t_werasc;
  cc[VLNEXT] = ltc->t_lnextc;
  *com = TIOCSETA;
  break;
 }
 case 133:





 case 134:





 case 132:





  if (*com == 132)
   tp->t_flags = (tp->t_flags&0xffff) | *(int *)data<<16;
  else {
   tp->t_flags =
    (ttcompatgetflags(tp)&0xffff0000)|(tp->t_flags&0xffff);
   if (*com == 133)
    tp->t_flags |= *(int *)data<<16;
   else
    tp->t_flags &= ~(*(int *)data<<16);
  }
  ttcompatsetlflags(tp, term);
  *com = TIOCSETA;
  break;
 }
 return 0;
}
