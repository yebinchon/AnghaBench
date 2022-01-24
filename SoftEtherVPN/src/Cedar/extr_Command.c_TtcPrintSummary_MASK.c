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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_3__ {int /*<<< orphan*/  Print; int /*<<< orphan*/  Param; scalar_t__ Double; scalar_t__ Raw; scalar_t__ Span; int /*<<< orphan*/  Type; int /*<<< orphan*/  NumTcp; int /*<<< orphan*/  Port; int /*<<< orphan*/  Host; } ;
typedef  TYPE_1__ TTC ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 

void FUNC6(TTC *ttc)
{
	wchar_t tmp[MAX_SIZE];
	wchar_t tmp2[MAX_SIZE];
	wchar_t *tag = L"%-35s %s";
	// Validate arguments
	if (ttc == NULL)
	{
		return;
	}

	FUNC2(ttc->Param, ttc->Print, L"");
	FUNC2(ttc->Param, ttc->Print, FUNC5("TTC_SUMMARY_BAR"));
	FUNC2(ttc->Param, ttc->Print, FUNC5("TTC_SUMMARY_TITLE"));
	FUNC2(ttc->Param, ttc->Print, L"");

	// Destination host name
	FUNC1(tmp2, sizeof(tmp2), ttc->Host);
	FUNC3(tmp, sizeof(tmp), tag, FUNC5("TTC_SUMMARY_HOST"), tmp2);
	FUNC2(ttc->Param, ttc->Print, tmp);

	// Destination TCP port number
	FUNC4(tmp2, ttc->Port);
	FUNC3(tmp, sizeof(tmp), tag, FUNC5("TTC_SUMMARY_PORT"), tmp2);
	FUNC2(ttc->Param, ttc->Print, tmp);

	// Number of TCP connections to establish
	FUNC4(tmp2, ttc->NumTcp);
	FUNC3(tmp, sizeof(tmp), tag, FUNC5("TTC_SUMMARY_NUMTCP"), tmp2);
	FUNC2(ttc->Param, ttc->Print, tmp);

	// Data transmission direction
	FUNC3(tmp, sizeof(tmp), tag, FUNC5("TTC_SUMMARY_TYPE"), FUNC0(ttc->Type));
	FUNC2(ttc->Param, ttc->Print, tmp);

	// Data transmission span
	FUNC3(tmp2, sizeof(tmp2), FUNC5("TTC_SPAN_STR"), (double)(ttc->Span) / 1000.0);
	FUNC3(tmp, sizeof(tmp), tag, FUNC5("TTC_SUMMARY_SPAN"), tmp2);
	FUNC2(ttc->Param, ttc->Print, tmp);

	// Correct the data for Ethernet frame
	FUNC3(tmp, sizeof(tmp), tag, FUNC5("TTC_SUMMARY_ETHER"), ttc->Raw ? FUNC5("SEC_NO") : FUNC5("SEC_YES"));
	FUNC2(ttc->Param, ttc->Print, tmp);

	// Measure the total amount of input and output throughput of relay equipment
	FUNC3(tmp, sizeof(tmp), tag, FUNC5("TTC_SUMMARY_DOUBLE"), ttc->Double ? FUNC5("SEC_YES") : FUNC5("SEC_NO"));
	FUNC2(ttc->Param, ttc->Print, tmp);

	FUNC2(ttc->Param, ttc->Print, FUNC5("TTC_SUMMARY_BAR"));
	FUNC2(ttc->Param, ttc->Print, L"");
}