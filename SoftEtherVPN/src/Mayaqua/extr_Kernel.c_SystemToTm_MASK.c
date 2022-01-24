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
struct tm {int tm_isdst; void* tm_sec; void* tm_min; void* tm_hour; void* tm_mday; void* tm_mon; void* tm_year; } ;
struct TYPE_3__ {int /*<<< orphan*/  wSecond; int /*<<< orphan*/  wMinute; int /*<<< orphan*/  wHour; int /*<<< orphan*/  wDay; int /*<<< orphan*/  wMonth; int /*<<< orphan*/  wYear; } ;
typedef  TYPE_1__ SYSTEMTIME ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*,int) ; 

void FUNC3(struct tm *t, SYSTEMTIME *st)
{
	// Validate arguments
	if (t == NULL || st == NULL)
	{
		return;
	}

	FUNC2(t, sizeof(struct tm));
	t->tm_year = FUNC0(st->wYear, 1970, 2099) - 1900;
	t->tm_mon = FUNC0(st->wMonth, 1, 12) - 1;
	t->tm_mday = FUNC0(st->wDay, 1, 31);
	t->tm_hour = FUNC0(st->wHour, 0, 23);
	t->tm_min = FUNC0(st->wMinute, 0, 59);
	t->tm_sec = FUNC0(st->wSecond, 0, 59);

	t->tm_isdst = -1;
	FUNC1(t);
}