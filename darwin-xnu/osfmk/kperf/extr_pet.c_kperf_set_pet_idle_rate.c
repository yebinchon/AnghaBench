
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pet_idle_rate ;

int
kperf_set_pet_idle_rate(int val)
{
 pet_idle_rate = val;

 return 0;
}
