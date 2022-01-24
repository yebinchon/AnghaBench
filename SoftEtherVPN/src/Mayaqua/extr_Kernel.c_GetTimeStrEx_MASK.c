#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_7__ {int /*<<< orphan*/  SecondStr; int /*<<< orphan*/  MinuteStr; int /*<<< orphan*/  HourStr; } ;
struct TYPE_6__ {int /*<<< orphan*/  wSecond; int /*<<< orphan*/  wMinute; int /*<<< orphan*/  wHour; } ;
typedef  TYPE_1__ SYSTEMTIME ;
typedef  TYPE_2__ LOCALE ;

/* Variables and functions */
 scalar_t__ SE_LANG_CHINESE_ZH ; 
 scalar_t__ SE_LANG_JAPANESE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_2__ current_locale ; 

void FUNC2(wchar_t *str, UINT size, SYSTEMTIME *st, LOCALE *locale)
{
	wchar_t *tag = L"%02u%s%02u%s%02u%s";
	// Validate arguments
	if (str == NULL || st == NULL)
	{
		return;
	}

	if (FUNC1() == SE_LANG_JAPANESE || FUNC1() == SE_LANG_CHINESE_ZH)
	{
		tag = L"%2u%s%2u%s%2u%s";
	}

	locale = (locale != NULL ? locale : &current_locale);
	FUNC0(str, size,
		tag,
		st->wHour, locale->HourStr,
		st->wMinute, locale->MinuteStr,
		st->wSecond, locale->SecondStr);
}