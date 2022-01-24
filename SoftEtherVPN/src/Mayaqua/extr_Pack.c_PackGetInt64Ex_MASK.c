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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  ELEMENT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VALUE_INT64 ; 

UINT64 FUNC2(PACK *p, char *name, UINT index)
{
	ELEMENT *e;
	// Validate arguments
	if (p == NULL || name == NULL)
	{
		return 0;
	}

	e = FUNC0(p, name, VALUE_INT64);
	if (e == NULL)
	{
		return 0;
	}
	return FUNC1(e, index);
}