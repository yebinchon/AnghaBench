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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

void FUNC4( void ) {
	char	*arg;
	char	name[256];

	arg = FUNC0( 1 );
	if (arg[0]) {
		FUNC2( "model", arg );
		FUNC2( "headmodel", arg );
	} else {
		FUNC3( "model", name, sizeof(name) );
		FUNC1("model is set to %s\n", name);
	}
}