
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct winsize {int dummy; } ;
struct user_termios {int c_cflag; } ;
struct tty {size_t t_line; struct winsize t_winsize; } ;
struct termios32 {int c_cflag; } ;
typedef int proc_t ;
typedef int dev_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_2__ {int (* l_ioctl ) (struct tty*,int,scalar_t__,int,int ) ;} ;


 int CLOCAL ;
 int EINVAL ;
 int ENOTTY ;
 struct tty** km_tty ;
 TYPE_1__* linesw ;
 size_t minor (int ) ;
 int stub1 (struct tty*,int,scalar_t__,int,int ) ;
 int ttioctl_locked (struct tty*,int,scalar_t__,int,int ) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;

int
kmioctl(dev_t dev, u_long cmd, caddr_t data, int flag, proc_t p)
{
 int error = 0;
 struct tty *tp = km_tty[minor(dev)];
 struct winsize *wp;

 tty_lock(tp);

 switch (cmd) {
     case 135:
  wp = (struct winsize *)data;
  *wp = tp->t_winsize;
  break;

     case 128:




  error = EINVAL;
  break;


     case 130:
     case 132:
     case 134:
  {
   struct termios32 *t = (struct termios32 *)data;
   t->c_cflag |= CLOCAL;

  }
  goto fallthrough;
     case 129:
     case 131:
     case 133:
  {
   struct user_termios *t = (struct user_termios *)data;
   t->c_cflag |= CLOCAL;

  }
fallthrough:
     default:
  error = (*linesw[tp->t_line].l_ioctl)(tp, cmd, data, flag, p);
  if (ENOTTY != error)
   break;
  error = ttioctl_locked(tp, cmd, data, flag, p);
  break;
 }

 tty_unlock(tp);

 return (error);
}
