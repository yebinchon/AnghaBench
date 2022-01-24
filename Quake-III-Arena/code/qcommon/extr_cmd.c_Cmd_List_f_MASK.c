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
struct TYPE_3__ {int name; struct TYPE_3__* next; } ;
typedef  TYPE_1__ cmd_function_t ;

/* Variables and functions */
 int FUNC0 () ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 TYPE_1__* cmd_functions ; 
 int /*<<< orphan*/  qfalse ; 

void FUNC4 (void)
{
	cmd_function_t	*cmd;
	int				i;
	char			*match;

	if ( FUNC0() > 1 ) {
		match = FUNC1( 1 );
	} else {
		match = NULL;
	}

	i = 0;
	for (cmd=cmd_functions ; cmd ; cmd=cmd->next) {
		if (match && !FUNC2(match, cmd->name, qfalse)) continue;

		FUNC3 ("%s\n", cmd->name);
		i++;
	}
	FUNC3 ("%i commands\n", i);
}