#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tm {scalar_t__ tm_sec; scalar_t__ tm_min; scalar_t__ tm_hour; scalar_t__ tm_wday; scalar_t__ tm_mday; scalar_t__ tm_mon; scalar_t__ tm_year; } ;
struct TYPE_4__ {scalar_t__ wMilliseconds; void* wSecond; void* wMinute; void* wHour; void* wDayOfWeek; void* wDay; void* wMonth; void* wYear; } ;
typedef  TYPE_1__ SYSTEMTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tm*,struct tm*,int) ; 
 void* FUNC1 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void FUNC4(SYSTEMTIME *st, struct tm *t)
{
	struct tm tmp;
	// Validate arguments
	if (st == NULL || t == NULL)
	{
		return;
	}

	FUNC0(&tmp, t, sizeof(struct tm));
	FUNC2(&tmp);

	FUNC3(st, sizeof(SYSTEMTIME));
	st->wYear = FUNC1(tmp.tm_year + 1900, 1970, 2099);
	st->wMonth = FUNC1(tmp.tm_mon + 1, 1, 12);
	st->wDay = FUNC1(tmp.tm_mday, 1, 31);
	st->wDayOfWeek = FUNC1(tmp.tm_wday, 0, 6);
	st->wHour = FUNC1(tmp.tm_hour, 0, 23);
	st->wMinute = FUNC1(tmp.tm_min, 0, 59);
	st->wSecond = FUNC1(tmp.tm_sec, 0, 59);
	st->wMilliseconds = 0;
}