#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* name; } ;
typedef  TYPE_1__ cmd_function_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* cmd_functions ; 
 int /*<<< orphan*/  FUNC1 (char const*,TYPE_1__*) ; 

void	FUNC2( const char *cmd_name ) {
	cmd_function_t	*cmd, **back;

	back = &cmd_functions;
	while( 1 ) {
		cmd = *back;
		if ( !cmd ) {
			// command wasn't active
			return;
		}
		if ( !FUNC1( cmd_name, cmd->name ) ) {
			*back = cmd->next;
			if (cmd->name) {
				FUNC0(cmd->name);
			}
			FUNC0 (cmd);
			return;
		}
		back = &cmd->next;
	}
}