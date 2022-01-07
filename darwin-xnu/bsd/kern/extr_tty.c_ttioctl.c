
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct tty {int dummy; } ;
typedef int proc_t ;
typedef int caddr_t ;


 int ttioctl_locked (struct tty*,int ,int ,int,int ) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;

int
ttioctl(struct tty *tp, u_long cmd, caddr_t data, int flag, proc_t p)
{
 int retval;

 tty_lock(tp);
 retval = ttioctl_locked(tp, cmd, data, flag, p);
 tty_unlock(tp);

 return (retval);
}
