
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int pet_timer_id ;

unsigned int
kperf_timer_get_petid(void)
{
 return pet_timer_id;
}
