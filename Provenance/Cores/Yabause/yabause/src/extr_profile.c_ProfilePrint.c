
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int entry_t ;
struct TYPE_3__ {scalar_t__ i_stopped; long l_total_ms; long start_time; char* str_name; int i_calls; } ;


 double CLOCKS_PER_SEC ;
 int CompareEntries ;
 long clock () ;
 int fprintf (int ,char*,...) ;
 int g_i_hwm ;
 long g_init_time ;
 TYPE_1__* g_tag ;
 int qsort (TYPE_1__**,int,int,int ) ;
 int stdout ;

void ProfilePrint (void) {
  int i ;
  long l_prof_time ;
  if (g_i_hwm == 0) {
    fprintf (stdout, "ProfilePrint: nothing to print.\n") ;
    return ;
  }

  l_prof_time = clock () - g_init_time ;
  if (l_prof_time == 0) {

    fprintf (stdout, "Warning: nothing to show because timer ran for less than 1 clock-tick.") ;
  }

  for (i = 0; i < g_i_hwm; ++i) {
    if (g_tag [i].i_stopped == 0) {
      g_tag [i].l_total_ms += clock () - g_tag [i].start_time ;
      fprintf (stdout, "Warning: \"%s\" started but not stopped. (Done now, but result may be over-expensive!)\n", g_tag [i].str_name) ;
    }
  }

  qsort (&g_tag, g_i_hwm, sizeof (entry_t), CompareEntries) ;
  fprintf (stdout, "Profiler results (descending by percentage):\n\n") ;
  for (i = 0; i < g_i_hwm; ++i) {

    fprintf (stdout, "< calls: %2d, total ms: %3d, percentage: %3.1f%% > - \"%s\"\n",
      g_tag [i].i_calls,
      (int) ((double) g_tag [i].l_total_ms / CLOCKS_PER_SEC * 1000),
      (double) g_tag [i].l_total_ms / l_prof_time * 100,
      g_tag [i].str_name) ;
  }
}
