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
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

UINT64 FUNC2(void *asn1_time)
{
	SYSTEMTIME st;
	// Validate arguments
	if (asn1_time == NULL)
	{
		return 0;
	}

	if (FUNC0(&st, asn1_time) == false)
	{
		return 0;
	}
	return FUNC1(&st);
}