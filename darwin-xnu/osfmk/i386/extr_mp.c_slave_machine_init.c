
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG (char*,int ) ;
 void* FULL_SLAVE_INIT ;
 int clock_init () ;
 int cpu_machine_init () ;
 int get_cpu_number () ;

void
slave_machine_init(void *param)
{



 DBG("slave_machine_init() CPU%d\n", get_cpu_number());

 if (param == FULL_SLAVE_INIT) {



  clock_init();
 }
 cpu_machine_init();
}
