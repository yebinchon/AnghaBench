
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {int t_dev; } ;
struct TYPE_2__ {int (* d_stop ) (struct tty*,int) ;} ;


 int TTY_LOCK_OWNED (struct tty*) ;
 TYPE_1__* cdevsw ;
 size_t major (int ) ;
 int stub1 (struct tty*,int) ;

__attribute__((used)) static void
ttystop(struct tty *tp, int rw)
{
 TTY_LOCK_OWNED(tp);

 (*cdevsw[major(tp->t_dev)].d_stop)(tp, rw);
}
