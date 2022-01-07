
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_perf_counter {scalar_t__ call_cnt; scalar_t__ total; } ;



__attribute__((used)) static int generic_action_start_performance_counters(struct retro_perf_counter **counters,
      unsigned offset, unsigned type, const char *label)
{
   if (counters[offset])
   {
      counters[offset]->total = 0;
      counters[offset]->call_cnt = 0;
   }

   return 0;
}
