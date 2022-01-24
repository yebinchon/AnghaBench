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
struct TYPE_4__ {int /*<<< orphan*/  Hostname; void* Port; void* SaveType; } ;
typedef  TYPE_1__ SYSLOG_SETTING ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

void FUNC3(SYSLOG_SETTING *t, PACK *p)
{
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC2(t, sizeof(SYSLOG_SETTING));
	t->SaveType = FUNC0(p, "SaveType");
	t->Port = FUNC0(p, "Port");
	FUNC1(p, "Hostname", t->Hostname, sizeof(t->Hostname));
}