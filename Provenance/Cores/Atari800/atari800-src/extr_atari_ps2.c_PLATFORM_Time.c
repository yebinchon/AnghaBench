
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double T0_COUNT ;
 double timer_interrupt_ticks ;

double PLATFORM_Time(void)
{





 static double fake_timer = 0;
 return fake_timer++;

}
