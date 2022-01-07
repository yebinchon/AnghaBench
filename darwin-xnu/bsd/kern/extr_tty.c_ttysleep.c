
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_gen; int t_lock; } ;


 int ERESTART ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int msleep0 (void*,int *,int,char const*,int,int (*) (int)) ;

int
ttysleep(struct tty *tp, void *chan, int pri, const char *wmesg, int timo)
{
 int error;
 int gen;

 TTY_LOCK_OWNED(tp);

 gen = tp->t_gen;

 error = msleep0(chan, &tp->t_lock, pri, wmesg, timo, (int (*)(int))0);
 if (error)
  return (error);
 return (tp->t_gen == gen ? 0 : ERESTART);
}
