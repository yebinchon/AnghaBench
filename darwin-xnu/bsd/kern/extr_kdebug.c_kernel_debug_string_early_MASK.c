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
typedef  int /*<<< orphan*/  arg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRACE_INFO_STRING ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int /*<<< orphan*/ ) ; 

void
FUNC4(const char *message)
{
	uintptr_t arg[4] = {0, 0, 0, 0};

	/* Stuff the message string in the args and log it. */
	FUNC3((char *)arg, message, FUNC1(sizeof(arg), FUNC2(message)));
	FUNC0(
		TRACE_INFO_STRING,
		arg[0], arg[1], arg[2], arg[3]);
}