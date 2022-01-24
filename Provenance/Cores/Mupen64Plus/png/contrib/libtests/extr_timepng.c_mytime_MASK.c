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
struct timespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_PROCESS_CPUTIME_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC3(struct timespec *t)
{
   /* Do the timing using clock_gettime and the per-process timer. */
   if (!FUNC0(CLOCK_PROCESS_CPUTIME_ID, t))
      return 1;

   FUNC2("CLOCK_PROCESS_CPUTIME_ID");
   FUNC1(stderr, "timepng: could not get the time\n");
   return 0;
}