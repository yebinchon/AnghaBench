#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  entry_t ;
struct TYPE_3__ {scalar_t__ i_stopped; long l_total_ms; long start_time; char* str_name; int i_calls; } ;

/* Variables and functions */
 double CLOCKS_PER_SEC ; 
 int /*<<< orphan*/  CompareEntries ; 
 long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int g_i_hwm ; 
 long g_init_time ; 
 TYPE_1__* g_tag ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC3 (void) {
  int i ;
  long l_prof_time ;
  if (g_i_hwm == 0) {
    FUNC1 (stdout, "ProfilePrint: nothing to print.\n") ;
    return ;
  }
  /* Retreive the time */
  l_prof_time = FUNC0 () - g_init_time ;
  if (l_prof_time == 0) {
    /* Avoid division by 0 */
    FUNC1 (stdout, "Warning: nothing to show because timer ran for less than 1 clock-tick.") ;
  }
  /* Print warnings for tags which are not stopped. */
  for (i = 0; i < g_i_hwm; ++i) {
    if (g_tag [i].i_stopped == 0) {
      g_tag [i].l_total_ms += FUNC0 () - g_tag [i].start_time ;
      FUNC1 (stdout, "Warning: \"%s\" started but not stopped. (Done now, but result may be over-expensive!)\n", g_tag [i].str_name) ;
    }
  }
  /* Sort the array desending */
  FUNC2 (&g_tag, g_i_hwm, sizeof (entry_t), CompareEntries) ;
  FUNC1 (stdout, "Profiler results (descending by percentage):\n\n") ;
  for (i = 0; i < g_i_hwm; ++i) {
    /* Print statistics */
    FUNC1 (stdout, "< calls: %2d, total ms: %3d, percentage: %3.1f%% > - \"%s\"\n",
      g_tag [i].i_calls, 
      (int) ((double) g_tag [i].l_total_ms / CLOCKS_PER_SEC * 1000),
      (double) g_tag [i].l_total_ms / l_prof_time * 100,
      g_tag [i].str_name) ;
  }
}