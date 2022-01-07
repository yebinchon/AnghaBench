
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_ospeed; unsigned int t_lowat; int t_hiwat; } ;


 int CBSIZE ;
 unsigned int CLAMP (unsigned int,int ,int ) ;
 int TTMAXHIWAT ;
 int TTMAXLOWAT ;
 int TTMINHIWAT ;
 int TTMINLOWAT ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int roundup (unsigned int,int ) ;

void
ttsetwater(struct tty *tp)
{
 int cps;
 unsigned int x;

 TTY_LOCK_OWNED(tp);



 cps = tp->t_ospeed / 10;
 tp->t_lowat = x = ((cps / 2) > TTMAXLOWAT ? TTMAXLOWAT : ((cps / 2) < TTMINLOWAT) ? TTMINLOWAT : (cps / 2));
 x += cps;
 x = ((x) > TTMAXHIWAT ? TTMAXHIWAT : ((x) < TTMINHIWAT) ? TTMINHIWAT : (x));
 tp->t_hiwat = roundup(x, CBSIZE);

}
