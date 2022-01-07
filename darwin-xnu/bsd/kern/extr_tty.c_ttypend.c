
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clist {int * c_cl; int c_cf; scalar_t__ c_cc; } ;
struct tty {int t_state; struct clist t_rawq; int t_lflag; } ;


 int CLR (int ,int ) ;
 int PENDIN ;
 int SET (int ,int ) ;
 int TS_TYPEN ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int getc (struct clist*) ;
 int ttyinput (int,struct tty*) ;

__attribute__((used)) static void
ttypend(struct tty *tp)
{
 struct clist tq;
 int c;

 TTY_LOCK_OWNED(tp);

 CLR(tp->t_lflag, PENDIN);
 SET(tp->t_state, TS_TYPEN);
 tq = tp->t_rawq;
 tp->t_rawq.c_cc = 0;
 tp->t_rawq.c_cf = tp->t_rawq.c_cl = ((void*)0);
 while ((c = getc(&tq)) >= 0)
  ttyinput(c, tp);
 CLR(tp->t_state, TS_TYPEN);
}
