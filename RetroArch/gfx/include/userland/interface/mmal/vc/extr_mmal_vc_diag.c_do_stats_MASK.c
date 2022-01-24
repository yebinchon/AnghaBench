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
typedef  int uint32_t ;
struct TYPE_3__ {char* name; int offset; } ;
typedef  int /*<<< orphan*/  MMAL_VC_STATS_T ;
typedef  scalar_t__ MMAL_STATUS_T ;

/* Variables and functions */
 scalar_t__ MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,char*) ; 
 char* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 TYPE_1__* stats_fields ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 unsigned int FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(int argc, const char **argv)
{
   MMAL_VC_STATS_T stats;
   int reset_stats = FUNC4(argv[1], "reset") == 0;
   MMAL_STATUS_T st = FUNC2(&stats, reset_stats);
   int ret;
   (void)argc; (void)argv;
   if (st != MMAL_SUCCESS)
   {
      FUNC0(stderr, "error getting status (%li,%s)\n", st, FUNC1(st));
      ret = -1;
   }
   else
   {
      unsigned i;
      uint32_t *ptr = (uint32_t*)&stats;
      for (i=0; i<FUNC5(stats_fields); i++)
      {
         FUNC3("%-32s: %u\n", stats_fields[i].name, ptr[stats_fields[i].offset/sizeof(uint32_t)]);
      }
      ret = 0;
   }
   return ret;
}