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
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  gclient_t ;
struct TYPE_2__ {int /*<<< orphan*/ * clients; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int MAX_TOKEN_CHARS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * g_entities ; 
 TYPE_1__ level ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

void	FUNC3( void ) {
	gclient_t	*cl;
	char		str[MAX_TOKEN_CHARS];

	// find the player
	FUNC2( 1, str, sizeof( str ) );
	cl = FUNC0( str );
	if ( !cl ) {
		return;
	}

	// set the team
	FUNC2( 2, str, sizeof( str ) );
	FUNC1( &g_entities[cl - level.clients], str );
}