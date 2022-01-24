#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  year ;
struct CK_DATE {int /*<<< orphan*/  day; int /*<<< orphan*/  month; int /*<<< orphan*/  year; } ;
typedef  int /*<<< orphan*/  month ;
typedef  int /*<<< orphan*/  day ;
typedef  int /*<<< orphan*/  UINT64 ;
struct TYPE_3__ {void* wDay; void* wMonth; void* wYear; } ;
typedef  TYPE_1__ SYSTEMTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

UINT64 FUNC4(struct CK_DATE *ck_date)
{
	SYSTEMTIME st;
	char year[32], month[32], day[32];
	// Validate arguments
	if (ck_date == NULL)
	{
		return 0;
	}

	FUNC3(year, sizeof(year));
	FUNC3(month, sizeof(month));
	FUNC3(day, sizeof(day));

	FUNC0(year, ck_date->year, 4);
	FUNC0(month, ck_date->month, 2);
	FUNC0(day, ck_date->day, 2);

	st.wYear = FUNC2(year);
	st.wMonth = FUNC2(month);
	st.wDay = FUNC2(day);

	return FUNC1(&st);
}