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
struct TYPE_2__ {char* filename; scalar_t__ fp; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_LOGFILENAMESIZE ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 TYPE_1__ logfile ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 

void FUNC4(char *filename)
{
	if (!filename || !FUNC2(filename))
	{
		FUNC1("openlog <filename>\n");
		return;
	} //end if
	if (logfile.fp)
	{
		FUNC1("log file %s is already opened\n", logfile.filename);
		return;
	} //end if
	logfile.fp = FUNC0(filename, "wb");
	if (!logfile.fp)
	{
		FUNC1("can't open the log file %s\n", filename);
		return;
	} //end if
	FUNC3(logfile.filename, filename, MAX_LOGFILENAMESIZE);
	FUNC1("Opened log %s\n", logfile.filename);
}