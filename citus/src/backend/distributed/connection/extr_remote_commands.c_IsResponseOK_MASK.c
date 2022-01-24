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
typedef  int /*<<< orphan*/  PGresult ;
typedef  scalar_t__ ExecStatusType ;

/* Variables and functions */
 scalar_t__ PGRES_COMMAND_OK ; 
 scalar_t__ PGRES_SINGLE_TUPLE ; 
 scalar_t__ PGRES_TUPLES_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 

bool
FUNC1(PGresult *result)
{
	ExecStatusType resultStatus = FUNC0(result);

	if (resultStatus == PGRES_SINGLE_TUPLE || resultStatus == PGRES_TUPLES_OK ||
		resultStatus == PGRES_COMMAND_OK)
	{
		return true;
	}

	return false;
}