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
 int /*<<< orphan*/  MENU_ANIMATION_CTL_SET_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct retro_perf_counter**,unsigned int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 

__attribute__((used)) static void FUNC3(
      struct retro_perf_counter **counters,
      unsigned offset,
      char *s, size_t len,
      char *s2, size_t len2,
      const char *path, unsigned *w
      )
{
   *s = '\0';
   *w = 19;
   FUNC2(s2, path, len2);

   FUNC0(
         counters, offset, s, len);
   FUNC1(MENU_ANIMATION_CTL_SET_ACTIVE, NULL);
}