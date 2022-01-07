
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct alarm {int dummy; } ;
typedef TYPE_1__* clock_t ;
struct TYPE_5__ {scalar_t__ cl_ops; } ;


 int alarm_zone ;
 int clock_count ;
 TYPE_1__* clock_list ;
 int ipc_clock_enable (TYPE_1__*) ;
 int ipc_clock_init (TYPE_1__*) ;
 int zinit (int,int,int,char*) ;

void
clock_service_create(void)
{
 clock_t clock;
 int i;




 for (i = 0; i < clock_count; i++) {
  clock = &clock_list[i];
  if (clock->cl_ops) {
   ipc_clock_init(clock);
   ipc_clock_enable(clock);
  }
 }





 i = sizeof(struct alarm);
 alarm_zone = zinit(i, (4096/i)*i, 10*i, "alarms");
}
