#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  set ;
struct TYPE_8__ {scalar_t__ Port; int /*<<< orphan*/  Hostname; int /*<<< orphan*/  SaveType; } ;
struct TYPE_9__ {int /*<<< orphan*/  SyslogLock; int /*<<< orphan*/  Syslog; TYPE_1__ SyslogSetting; } ;
typedef  TYPE_1__ SYSLOG_SETTING ;
typedef  TYPE_2__ SERVER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSLOG_NONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

void FUNC6(SERVER *s, SYSLOG_SETTING *setting)
{
	SYSLOG_SETTING set;
	// Validate arguments
	if (s == NULL || setting == NULL)
	{
		return;
	}

	FUNC5(&set, sizeof(set));
	FUNC0(&set, setting, sizeof(SYSLOG_SETTING));

	if (FUNC1(set.Hostname) || set.Port == 0)
	{
		set.SaveType = SYSLOG_NONE;
	}

	FUNC2(s->SyslogLock);
	{
		FUNC0(&s->SyslogSetting, &set, sizeof(SYSLOG_SETTING));

		FUNC3(s->Syslog, set.Hostname, set.Port);
	}
	FUNC4(s->SyslogLock);
}