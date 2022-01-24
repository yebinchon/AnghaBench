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
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 unsigned int MENU_SETTINGS_PERF_COUNTERS_BEGIN ; 
 int /*<<< orphan*/  FUNC0 (struct retro_perf_counter**,unsigned int,char*,size_t,char*,size_t,char const*,unsigned int*) ; 
 struct retro_perf_counter** FUNC1 () ; 

__attribute__((used)) static void FUNC2(
      file_list_t* list,
      unsigned *w, unsigned type, unsigned i,
      const char *label,
      char *s, size_t len,
      const char *path,
      char *s2, size_t len2)
{
   struct retro_perf_counter **counters = FUNC1();
   unsigned offset = type - MENU_SETTINGS_PERF_COUNTERS_BEGIN;
   FUNC0(counters, offset, s, len,
         s2, len, path, w);
}