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
 int FUNC0 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool FUNC2(void *asn1_time, UINT64 t)
{
	SYSTEMTIME st;
	// Validate arguments
	if (asn1_time == NULL)
	{
		return false;
	}

	FUNC1(&st, t);
	return FUNC0(asn1_time, &st);
}