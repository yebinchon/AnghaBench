
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* clock_t ;
struct TYPE_5__ {TYPE_1__* cl_ops; } ;
struct TYPE_4__ {int (* c_init ) () ;} ;


 int clock_count ;
 TYPE_2__* clock_list ;
 int stub1 () ;

void
clock_oldinit(void)
{
 clock_t clock;
 int i;




 for (i = 0; i < clock_count; i++) {
  clock = &clock_list[i];
  if (clock->cl_ops && clock->cl_ops->c_init)
   (*clock->cl_ops->c_init)();
 }
}
