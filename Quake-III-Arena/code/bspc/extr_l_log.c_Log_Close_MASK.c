#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* filename; int /*<<< orphan*/ * fp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ logfile ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void FUNC2(void)
{
	if (!logfile.fp)
	{
		FUNC1("no log file to close\n");
		return;
	} //end if
	if (FUNC0(logfile.fp))
	{
		FUNC1("can't close log file %s\n", logfile.filename);
		return;
	} //end if
	logfile.fp = NULL;
	FUNC1("Closed log %s\n", logfile.filename);
}