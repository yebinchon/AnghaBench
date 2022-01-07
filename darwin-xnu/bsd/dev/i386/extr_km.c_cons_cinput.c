
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {size_t t_line; } ;
struct TYPE_2__ {int (* l_rint ) (char,struct tty*) ;} ;


 struct tty** km_tty ;
 TYPE_1__* linesw ;
 int stub1 (char,struct tty*) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;

void
cons_cinput(char ch)
{
 struct tty *tp = km_tty[0];

 tty_lock(tp);
 (*linesw[tp->t_line].l_rint) (ch, tp);
 tty_unlock(tp);
}
