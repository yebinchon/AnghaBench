
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_state; } ;


 int SET (int ,int ) ;
 int TSA_HUP_OR_INPUT (struct tty*) ;
 int TS_PGRPHUP ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int wakeup (int ) ;

void
ttysetpgrphup(struct tty *tp)
{
 TTY_LOCK_OWNED(tp);
 SET(tp->t_state, TS_PGRPHUP);
 wakeup(TSA_HUP_OR_INPUT(tp));
}
