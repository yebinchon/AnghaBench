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
struct TYPE_5__ {int wYear; int wMonth; int wDay; int wHour; int wMinute; int wSecond; } ;
typedef  TYPE_1__ SYSTEMTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

bool FUNC4(SYSTEMTIME *s, char *str)
{
	char century[3] = {0, 0, 0};
	bool fourdigityear = false;

	// Validate arguments
	if (s == NULL || str == NULL)
	{
		return false;
	}
	if (FUNC1(str) != 13)
	{
		if (FUNC1(str) != 15)
		{
			return false;
		}

		// Year has 4 digits - save first two and use the rest
		// as if it had two digits
		fourdigityear = true;
		century[0] = str[0];
		century[1] = str[1];
		str += 2;
	}
	if (str[12] != 'Z')
	{
		return false;
	}

	// Conversion
	{
		char year[3] = {str[0], str[1], 0},
			month[3] = {str[2], str[3], 0},
			day[3] = {str[4], str[5], 0},
			hour[3] = {str[6], str[7], 0},
			minute[3] = {str[8], str[9], 0},
			second[3] = {str[10], str[11], 0};
		FUNC3(s, sizeof(SYSTEMTIME));
		s->wYear = FUNC2(year);
		if (fourdigityear)
		{
			s->wYear += FUNC2(century) * 100;
		}
		else if (s->wYear >= 60)
		{
			s->wYear += 1900;
		}
		else
		{
			s->wYear += 2000;
		}
		s->wMonth = FUNC2(month);
		s->wDay = FUNC2(day);
		s->wHour = FUNC2(hour);
		s->wMinute = FUNC2(minute);
		s->wSecond = FUNC2(second);
		FUNC0(s);
	}

	return true;
}