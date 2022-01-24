#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ demoplaying; } ;
struct TYPE_3__ {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ CA_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 TYPE_2__ clc ; 
 TYPE_1__ cls ; 

void FUNC4( const char *string ) {
	char	*cmd;

	cmd = FUNC2(0);

	// ignore key up commands
	if ( cmd[0] == '-' ) {
		return;
	}

	if ( clc.demoplaying || cls.state < CA_CONNECTED || cmd[0] == '+' ) {
		FUNC3 ("Unknown command \"%s\"\n", cmd);
		return;
	}

	if ( FUNC1() > 1 ) {
		FUNC0( string );
	} else {
		FUNC0( cmd );
	}
}