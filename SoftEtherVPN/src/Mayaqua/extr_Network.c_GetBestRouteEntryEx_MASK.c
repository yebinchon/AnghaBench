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
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  ROUTE_TABLE ;
typedef  int /*<<< orphan*/  ROUTE_ENTRY ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 

ROUTE_ENTRY *FUNC3(IP *ip, UINT exclude_if_id)
{
	ROUTE_TABLE *table;
	ROUTE_ENTRY *e = NULL;
	// Validate arguments
	if (ip == NULL)
	{
		return NULL;
	}

	table = FUNC2();
	if (table == NULL)
	{
		return NULL;
	}

	e = FUNC1(table, ip, exclude_if_id);
	FUNC0(table);

	return e;
}