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
typedef  int /*<<< orphan*/  msg_t ;
struct TYPE_2__ {int serverCommandSequence; int /*<<< orphan*/ * serverCommands; } ;

/* Variables and functions */
 int MAX_RELIABLE_COMMANDS ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__ clc ; 

void FUNC3( msg_t *msg ) {
	char	*s;
	int		seq;
	int		index;

	seq = FUNC0( msg );
	s = FUNC1( msg );

	// see if we have already executed stored it off
	if ( clc.serverCommandSequence >= seq ) {
		return;
	}
	clc.serverCommandSequence = seq;

	index = seq & (MAX_RELIABLE_COMMANDS-1);
	FUNC2( clc.serverCommands[ index ], s, sizeof( clc.serverCommands[ index ] ) );
}