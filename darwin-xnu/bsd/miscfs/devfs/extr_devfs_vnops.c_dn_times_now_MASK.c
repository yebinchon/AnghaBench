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
typedef  int /*<<< orphan*/  uint32_t ;
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  devnode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct timeval*,struct timeval*,struct timeval*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*) ; 

void
FUNC4(devnode_t * dnp, uint32_t just_changed_flags)
{
	struct timeval now;

	FUNC0();
	FUNC3(&now);
	FUNC2(dnp, &now, &now, &now, just_changed_flags);
	FUNC1();
}