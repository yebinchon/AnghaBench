
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_refcnt; } ;


 int TTY_LOCK_OWNED (struct tty*) ;

void
ttyhold(struct tty *tp)
{
 TTY_LOCK_OWNED(tp);
 tp->t_refcnt++;
}
