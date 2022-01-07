
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_lock; } ;


 int TTY_LOCK_OWNED (struct tty*) ;
 int lck_mtx_unlock (int *) ;

void
tty_unlock(struct tty *tp)
{
 TTY_LOCK_OWNED(tp);
 lck_mtx_unlock(&tp->t_lock);
}
