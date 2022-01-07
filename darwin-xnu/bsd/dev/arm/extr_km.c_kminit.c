
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t_dev; } ;


 int initialized ;
 TYPE_1__** km_tty ;
 int makedev (int,int ) ;
 TYPE_1__* ttymalloc () ;

void
kminit(void)
{
 km_tty[0] = ttymalloc();
    km_tty[0]->t_dev = makedev(12, 0);
 initialized = 1;
}
