
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_perf_counter {int dummy; } ;


 struct retro_perf_counter** perf_counters_libretro ;

struct retro_perf_counter **retro_get_perf_counter_libretro(void)
{
   return perf_counters_libretro;
}
