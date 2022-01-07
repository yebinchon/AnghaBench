
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int dt_stat_token ;
typedef int dt_stat_time_t ;


 int DBG_FUNC_NONE ;
 int dt_stat_stable (int ) ;
 int dt_stat_time_begin (int ) ;
 int dt_stat_time_end_batch (int ,int,int ) ;
 int kdebug_trace (int,int,int,int,int) ;

__attribute__((used)) static void loop_kdebug_trace(dt_stat_time_t s) {
 do {
  dt_stat_token start = dt_stat_time_begin(s);
  for (uint32_t i = 0; i<100; i++) {
   kdebug_trace(0x97000000 | DBG_FUNC_NONE, i, i, i, i);
   kdebug_trace(0x97000000 | DBG_FUNC_NONE, i, i, i, i);
   kdebug_trace(0x97000000 | DBG_FUNC_NONE, i, i, i, i);
   kdebug_trace(0x97000000 | DBG_FUNC_NONE, i, i, i, i);
   kdebug_trace(0x97000000 | DBG_FUNC_NONE, i, i, i, i);
   kdebug_trace(0x97000000 | DBG_FUNC_NONE, i, i, i, i);
   kdebug_trace(0x97000000 | DBG_FUNC_NONE, i, i, i, i);
   kdebug_trace(0x97000000 | DBG_FUNC_NONE, i, i, i, i);
   kdebug_trace(0x97000000 | DBG_FUNC_NONE, i, i, i, i);
   kdebug_trace(0x97000000 | DBG_FUNC_NONE, i, i, i, i);
  }
  dt_stat_time_end_batch(s, 1000, start);
 } while (!dt_stat_stable(s));
}
