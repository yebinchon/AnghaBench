
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {int dummy; } ;
typedef int proc_t ;
typedef int dev_t ;
struct TYPE_2__ {struct tty** d_ttys; } ;


 TYPE_1__* cdevsw ;
 size_t major (int ) ;
 size_t minor (int ) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;
 int ttyselect (struct tty*,int,void*,int ) ;

int
ttselect(dev_t dev, int rw, void *wql, proc_t p)
{
 int rv;
 struct tty *tp = cdevsw[major(dev)].d_ttys[minor(dev)];

 tty_lock(tp);
 rv = ttyselect(tp, rw, wql, p);
 tty_unlock(tp);

 return (rv);
}
