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
 int FUNC0 (int) ; 
 int FUNC1 (char,char,char,char,char) ; 

bool
FUNC2(char *sqlStateString, int category)
{
	bool sqlStateMatchesCategory = false;
	int sqlState = 0;
	int sqlStateCategory = 0;

	if (sqlStateString == NULL)
	{
		return false;
	}

	sqlState = FUNC1(sqlStateString[0], sqlStateString[1], sqlStateString[2],
							 sqlStateString[3], sqlStateString[4]);

	sqlStateCategory = FUNC0(sqlState);
	if (sqlStateCategory == category)
	{
		sqlStateMatchesCategory = true;
	}

	return sqlStateMatchesCategory;
}