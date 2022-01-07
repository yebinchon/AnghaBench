
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chassis_stats_t ;


 int * chassis_global_stats ;
 int g_assert_not_reached () ;
 int g_free (int *) ;

void chassis_stats_free(chassis_stats_t *stats) {
 if (!stats) return;

 if (stats == chassis_global_stats) {
  g_free(stats);
  chassis_global_stats = ((void*)0);
 } else {

  g_assert_not_reached();
 }
}
