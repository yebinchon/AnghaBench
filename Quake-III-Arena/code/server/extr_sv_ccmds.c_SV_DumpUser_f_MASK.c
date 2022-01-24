#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  userinfo; } ;
typedef  TYPE_1__ client_t ;
struct TYPE_5__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 TYPE_2__* com_sv_running ; 

__attribute__((used)) static void FUNC4( void ) {
	client_t	*cl;

	// make sure server is running
	if ( !com_sv_running->integer ) {
		FUNC1( "Server is not running.\n" );
		return;
	}

	if ( FUNC0() != 2 ) {
		FUNC1 ("Usage: info <userid>\n");
		return;
	}

	cl = FUNC3();
	if ( !cl ) {
		return;
	}

	FUNC1( "userinfo\n" );
	FUNC1( "--------\n" );
	FUNC2( cl->userinfo );
}