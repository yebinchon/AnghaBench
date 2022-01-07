
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_state; } ;


 int CLR (int ,int ) ;
 int TS_PGRPHUP ;
 int TTY_LOCK_OWNED (struct tty*) ;

void
ttyclrpgrphup(struct tty *tp)
{
 TTY_LOCK_OWNED(tp);
 CLR(tp->t_state, TS_PGRPHUP);
}
