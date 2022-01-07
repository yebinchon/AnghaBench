
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_perf_counter {int registered; } ;


 scalar_t__ MAX_COUNTERS ;
 struct retro_perf_counter** perf_counters_libretro ;
 scalar_t__ perf_ptr_libretro ;

void performance_counter_register(struct retro_perf_counter *perf)
{
   if (perf->registered || perf_ptr_libretro >= MAX_COUNTERS)
      return;

   perf_counters_libretro[perf_ptr_libretro++] = perf;
   perf->registered = 1;
}
