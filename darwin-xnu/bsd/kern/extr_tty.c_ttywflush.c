
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int dummy; } ;


 int FREAD ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int ttyflush (struct tty*,int ) ;
 int ttywait (struct tty*) ;

__attribute__((used)) static int
ttywflush(struct tty *tp)
{
 int error;

 TTY_LOCK_OWNED(tp);

 if ((error = ttywait(tp)) == 0)
  ttyflush(tp, FREAD);
 return (error);
}
