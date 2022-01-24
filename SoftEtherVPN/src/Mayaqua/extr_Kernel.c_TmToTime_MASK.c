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
typedef  scalar_t__ time_64t ;
struct tm {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct tm*) ; 

time_64t FUNC1(struct tm *t)
{
	time_64t tmp;
	// Validate arguments
	if (t == NULL)
	{
		return 0;
	}

	tmp = FUNC0(t);
	if (tmp == (time_64t)-1)
	{
		return 0;
	}
	return tmp;
}