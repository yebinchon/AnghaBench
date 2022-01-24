#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  RB_DEBUGGER ; 
 int /*<<< orphan*/  __STDERR_FILENO ; 
 int FUNC0 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  master_host_port ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

void
FUNC4(const char *s, ...)
{
	char buffer[1024];
	int len = FUNC0(buffer, sizeof(buffer), "panic: %s\n", s);
	FUNC3(__STDERR_FILENO, buffer, len);
	
#define RB_DEBUGGER	0x1000	/* enter debugger NOW */
	(void) FUNC2(master_host_port, RB_DEBUGGER);

	/* 4279008 - don't return */
	FUNC1();
}