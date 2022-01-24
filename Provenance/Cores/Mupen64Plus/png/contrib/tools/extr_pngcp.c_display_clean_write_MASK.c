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
struct display {scalar_t__ tsp; int /*<<< orphan*/  ip; int /*<<< orphan*/ * write_pp; int /*<<< orphan*/ * fp; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct display *dp)
{
   if (dp->fp != NULL)
   {
      FILE *fp = dp->fp;
      dp->fp = NULL;
      (void)FUNC0(fp);
   }

   if (dp->write_pp != NULL)
      FUNC1(&dp->write_pp, dp->tsp > 0 ? NULL : &dp->ip);
}