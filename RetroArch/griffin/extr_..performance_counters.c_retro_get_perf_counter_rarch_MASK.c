#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct retro_perf_counter {int dummy; } ;

/* Variables and functions */
 struct retro_perf_counter** perf_counters_rarch ; 

struct retro_perf_counter **FUNC0(void)
{
   return perf_counters_rarch;
}