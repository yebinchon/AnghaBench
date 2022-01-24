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
struct TYPE_2__ {scalar_t__ binding; } ;

/* Variables and functions */
 int FUNC0 () ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (char*) ; 
 TYPE_1__* keys ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

void FUNC6 (void)
{
	int			i, c, b;
	char		cmd[1024];
	
	c = FUNC0();

	if (c < 2)
	{
		FUNC2 ("bind <key> [command] : attach a command to a key\n");
		return;
	}
	b = FUNC4 (FUNC1(1));
	if (b==-1)
	{
		FUNC2 ("\"%s\" isn't a valid key\n", FUNC1(1));
		return;
	}

	if (c == 2)
	{
		if (keys[b].binding)
			FUNC2 ("\"%s\" = \"%s\"\n", FUNC1(1), keys[b].binding );
		else
			FUNC2 ("\"%s\" is not bound\n", FUNC1(1) );
		return;
	}
	
// copy the rest of the command line
	cmd[0] = 0;		// start out with a null string
	for (i=2 ; i< c ; i++)
	{
		FUNC5 (cmd, FUNC1(i));
		if (i != (c-1))
			FUNC5 (cmd, " ");
	}

	FUNC3 (b, cmd);
}