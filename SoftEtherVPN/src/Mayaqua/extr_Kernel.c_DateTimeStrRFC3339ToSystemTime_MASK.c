#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  str_year ;
typedef  int /*<<< orphan*/  str_second ;
typedef  int /*<<< orphan*/  str_msec ;
typedef  int /*<<< orphan*/  str_month ;
typedef  int /*<<< orphan*/  str_minute ;
typedef  int /*<<< orphan*/  str_hour ;
typedef  int /*<<< orphan*/  str_day ;
typedef  size_t UINT ;
struct TYPE_5__ {void* wMilliseconds; void* wSecond; void* wMinute; void* wHour; void* wDay; void* wMonth; void* wYear; } ;
typedef  TYPE_1__ SYSTEMTIME ;

/* Variables and functions */
 size_t INFINITE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 size_t FUNC1 (char*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int FUNC4 (char*) ; 
 void* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

bool FUNC7(SYSTEMTIME *st, char *str)
{
	bool ok = false;
	UINT index_plus;
	char tmp[MAX_PATH];
	FUNC6(st, sizeof(SYSTEMTIME));
	if (st == NULL || str == NULL)
	{
		return false;
	}

	FUNC3(tmp, sizeof(tmp), str);

	index_plus = FUNC1(tmp, "+", 0, false);
	if (index_plus != INFINITE)
	{
		tmp[index_plus] = 0;
	}

	if (FUNC4(tmp) >= 19)
	{
		if (tmp[4] == '-' && tmp[7] == '-' && tmp[10] == 'T' && tmp[13] == ':' &&
			tmp[16] == ':')
		{
			char str_year[16], str_month[16], str_day[16], str_hour[16], str_minute[16],
				str_second[16], str_msec[16];

			FUNC3(str_year, sizeof(str_year), tmp + 0);
			str_year[4] = 0;

			FUNC3(str_month, sizeof(str_month), tmp + 5);
			str_month[2] = 0;

			FUNC3(str_day, sizeof(str_day), tmp + 8);
			str_day[2] = 0;

			FUNC3(str_hour, sizeof(str_hour), tmp + 11);
			str_hour[2] = 0;

			FUNC3(str_minute, sizeof(str_minute), tmp + 14);
			str_minute[2] = 0;

			FUNC3(str_second, sizeof(str_second), tmp + 17);
			str_second[2] = 0;

			str_msec[0] = 0;

			if (FUNC4(tmp) >= 21 && tmp[19] == '.')
			{
				FUNC3(str_msec, sizeof(str_msec), tmp + 20);
				str_msec[FUNC4(tmp) - 21] = 0;
				while (FUNC4(str_msec) < 3)
				{
					FUNC2(str_msec, sizeof(str_msec), "0");
				}
				str_msec[3] = 0;
			}

			st->wYear = FUNC5(str_year);
			st->wMonth = FUNC5(str_month);
			st->wDay = FUNC5(str_day);
			st->wHour = FUNC5(str_hour);
			st->wMinute = FUNC5(str_minute);
			st->wSecond = FUNC5(str_second);
			st->wMilliseconds = FUNC5(str_msec);

			FUNC0(st);

			ok = true;
		}
	}

	return ok;
}