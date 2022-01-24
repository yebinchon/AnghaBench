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
typedef  int /*<<< orphan*/  time_64t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*) ; 

time_64t FUNC2(SYSTEMTIME *st)
{
	struct tm t;
	// Validate arguments
	if (st == NULL)
	{
		return 0;
	}

	FUNC0(&t, st);
	return FUNC1(&t);
}