
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_lock; } ;


 int TTY_LOCK_NOTOWNED (struct tty*) ;
 int lck_mtx_lock (int *) ;

void
tty_lock(struct tty *tp)
{
 TTY_LOCK_NOTOWNED(tp);
 lck_mtx_lock(&tp->t_lock);
}
