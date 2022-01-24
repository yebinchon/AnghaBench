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
struct TYPE_3__ {int /*<<< orphan*/  wDay; int /*<<< orphan*/  wMonth; int /*<<< orphan*/  wYear; } ;
typedef  TYPE_1__ SYSTEMTIME ;
typedef  struct CK_DATE CK_DATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct CK_DATE*,int) ; 

void FUNC4(void *p_ck_date, UINT64 time64)
{
	SYSTEMTIME st;
	char year[32], month[32], day[32];
	struct CK_DATE *ck_date = (CK_DATE *)p_ck_date;
	// Validate arguments
	if (ck_date == NULL)
	{
		return;
	}

	FUNC2(&st, time64);

	FUNC1(year, sizeof(year), "%04u", st.wYear);
	FUNC1(month, sizeof(month), "%04u", st.wMonth);
	FUNC1(day, sizeof(day), "%04u", st.wDay);

	FUNC3(ck_date, sizeof(CK_DATE));

	FUNC0(ck_date->year, year, 4);
	FUNC0(ck_date->month, month, 2);
	FUNC0(ck_date->day, day, 2);
}