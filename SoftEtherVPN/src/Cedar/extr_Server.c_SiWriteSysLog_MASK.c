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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  machinename ;
typedef  int /*<<< orphan*/  datetime ;
struct TYPE_3__ {int /*<<< orphan*/  Syslog; scalar_t__ StrictSyslogDatetimeFormat; } ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  TYPE_1__ SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GSF_DISABLE_SYSLOG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MAX_HOST_NAME_LEN ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char*,char*,char*,char*,char*,...) ; 

void FUNC10(SERVER *s, char *typestr, char *hubname, wchar_t *message)
{
	wchar_t tmp[1024];
	char machinename[MAX_HOST_NAME_LEN + 1];
	char datetime[MAX_PATH];
	SYSTEMTIME st;
	// Validate arguments
	if (s == NULL || typestr == NULL || message == NULL)
	{
		return;
	}

	if (FUNC4(GSF_DISABLE_SYSLOG) != 0)
	{
		return;
	}

	// Host name
	FUNC5(machinename, sizeof(machinename));

	// Date and time
	FUNC7(&st);
	if(s->StrictSyslogDatetimeFormat){
		FUNC3(datetime, sizeof(datetime), &st, FUNC1());
	}else{
		FUNC2(datetime, sizeof(datetime), &st);
	}

	if (FUNC6(hubname) == false)
	{
		FUNC9(tmp, sizeof(tmp), L"[%S/VPN/%S] (%S) <%S>: %s",
			machinename, hubname, datetime, typestr, message);
	}
	else
	{
		FUNC9(tmp, sizeof(tmp), L"[%S/VPN] (%S) <%S>: %s",
			machinename, datetime, typestr, message);
	}

	FUNC0("Syslog send: %S\n",tmp);

	FUNC8(s->Syslog, tmp);
}