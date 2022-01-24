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
 int /*<<< orphan*/  FUNC0 (struct tm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tm*) ; 

void FUNC2(SYSTEMTIME *st, time_64t t)
{
	struct tm tmp;
	// Validate arguments
	if (st == NULL)
	{
		return;
	}

	FUNC0(&tmp, t);
	FUNC1(st, &tmp);
}