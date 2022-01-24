#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_7__ {int NumTokens; int /*<<< orphan*/ * Token; } ;
typedef  TYPE_1__ UNI_TOKEN_LIST ;
typedef  int UINT ;
struct TYPE_8__ {int /*<<< orphan*/  Unknown; int /*<<< orphan*/  SpanSecond; int /*<<< orphan*/  SpanMinute; int /*<<< orphan*/  SpanHour; int /*<<< orphan*/  SpanDay; int /*<<< orphan*/ * DayOfWeek; int /*<<< orphan*/  SecondStr; int /*<<< orphan*/  MinuteStr; int /*<<< orphan*/  HourStr; int /*<<< orphan*/  DayStr; int /*<<< orphan*/  MonthStr; int /*<<< orphan*/  YearStr; } ;
typedef  TYPE_2__ LOCALE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

bool FUNC4(LOCALE *locale, wchar_t *str)
{
	UNI_TOKEN_LIST *tokens;
	UINT i;
	// Validate arguments
	if (locale == NULL || str == NULL)
	{
		return false;
	}

	// Analysis of the token
	tokens = FUNC2(str, L" ");
	if (tokens->NumTokens != 18)
	{
		FUNC1(tokens);
		return false;
	}

	// Set to the structure
	FUNC3(locale, sizeof(LOCALE));
	FUNC0(locale->YearStr, sizeof(locale->YearStr), tokens->Token[0]);
	FUNC0(locale->MonthStr, sizeof(locale->MonthStr), tokens->Token[1]);
	FUNC0(locale->DayStr, sizeof(locale->DayStr), tokens->Token[2]);
	FUNC0(locale->HourStr, sizeof(locale->HourStr), tokens->Token[3]);
	FUNC0(locale->MinuteStr, sizeof(locale->MinuteStr), tokens->Token[4]);
	FUNC0(locale->SecondStr, sizeof(locale->SecondStr), tokens->Token[5]);

	for (i = 0;i < 7;i++)
	{
		FUNC0(locale->DayOfWeek[i], sizeof(locale->DayOfWeek[i]),
			tokens->Token[6 + i]);
	}

	FUNC0(locale->SpanDay, sizeof(locale->SpanDay), tokens->Token[13]);
	FUNC0(locale->SpanHour, sizeof(locale->SpanHour), tokens->Token[14]);
	FUNC0(locale->SpanMinute, sizeof(locale->SpanMinute), tokens->Token[15]);
	FUNC0(locale->SpanSecond, sizeof(locale->SpanSecond), tokens->Token[16]);

	FUNC0(locale->Unknown, sizeof(locale->Unknown), tokens->Token[17]);

	FUNC1(tokens);
	return true;
}