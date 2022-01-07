
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio {int dummy; } ;
struct tty {size_t t_line; } ;
typedef int dev_t ;
struct TYPE_2__ {int (* l_read ) (struct tty*,struct uio*,int) ;} ;


 struct tty** km_tty ;
 TYPE_1__* linesw ;
 size_t minor (int ) ;
 int stub1 (struct tty*,struct uio*,int) ;
 int tty_lock (struct tty*) ;
 int tty_unlock (struct tty*) ;

int
kmread(dev_t dev, struct uio * uio, int ioflag)
{
 int ret;
 struct tty *tp = km_tty[minor(dev)];

 tty_lock(tp);
 ret = (*linesw[tp->t_line].l_read)(tp, uio, ioflag);
 tty_unlock(tp);

 return (ret);
}
