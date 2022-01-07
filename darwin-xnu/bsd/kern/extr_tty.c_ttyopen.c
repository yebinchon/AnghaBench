
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty {int t_winsize; int t_state; int t_cflag; int t_dev; } ;
typedef int dev_t ;


 int CLOCAL ;
 scalar_t__ ISSET (int ,int ) ;
 int SET (int ,int ) ;
 int TS_CONNECTED ;
 int TS_ISOPEN ;
 int TTY_LOCK_OWNED (struct tty*) ;
 int bzero (int *,int) ;

int
ttyopen(dev_t device, struct tty *tp)
{
 TTY_LOCK_OWNED(tp);

 tp->t_dev = device;

 if (!ISSET(tp->t_state, TS_ISOPEN)) {
  SET(tp->t_state, TS_ISOPEN);
  if (ISSET(tp->t_cflag, CLOCAL)) {
   SET(tp->t_state, TS_CONNECTED); }
  bzero(&tp->t_winsize, sizeof(tp->t_winsize));
 }

 return (0);
}
