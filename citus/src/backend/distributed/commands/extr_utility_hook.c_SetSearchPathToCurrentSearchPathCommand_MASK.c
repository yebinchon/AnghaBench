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
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__* StringInfo ;

/* Variables and functions */
 char* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*) ; 
 TYPE_1__* FUNC2 () ; 

__attribute__((used)) static char *
FUNC3(void)
{
	StringInfo setCommand = NULL;
	char *currentSearchPath = FUNC0();

	if (currentSearchPath == NULL)
	{
		return NULL;
	}

	setCommand = FUNC2();
	FUNC1(setCommand, "SET search_path TO %s;", currentSearchPath);

	return setCommand->data;
}