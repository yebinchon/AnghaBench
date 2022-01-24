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

/* Variables and functions */
 int /*<<< orphan*/  cheevo_badge ; 
 int /*<<< orphan*/  cheevo_title ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

void FUNC4(const char *title, const char *badge)
{
   FUNC0(NULL);

   /* TODO: Make a queue of notifications to display */

   cheevo_title = FUNC3(title);
   FUNC1(&cheevo_badge, badge);

   FUNC2();
}