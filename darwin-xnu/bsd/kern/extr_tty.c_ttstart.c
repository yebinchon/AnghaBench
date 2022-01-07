
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int (* t_oproc ) (struct tty*) ;} ;


 int TTY_LOCK_OWNED (struct tty*) ;
 int stub1 (struct tty*) ;

int
ttstart(struct tty *tp)
{
 TTY_LOCK_OWNED(tp);

 if (tp->t_oproc != ((void*)0))
  (*tp->t_oproc)(tp);

 return (0);
}
