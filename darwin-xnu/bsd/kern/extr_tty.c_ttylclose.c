
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int FNONBLOCK ;
 int FREAD ;
 int FWRITE ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int ttyflush (struct tty*,int) ;
 scalar_t__ ttywflush (struct tty*) ;

int
ttylclose(struct tty *tp, int flag)
{
 TTY_LOCK_OWNED(tp);

 if ( (flag & FNONBLOCK) || ttywflush(tp))
  ttyflush(tp, FREAD | FWRITE);

 return (0);
}
