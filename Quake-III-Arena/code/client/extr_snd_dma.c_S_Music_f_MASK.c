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

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* s_backgroundLoop ; 

void FUNC4( void ) {
	int		c;

	c = FUNC0();

	if ( c == 2 ) {
		FUNC3( FUNC1(1), FUNC1(1) );
		s_backgroundLoop[0] = 0;
	} else if ( c == 3 ) {
		FUNC3( FUNC1(1), FUNC1(2) );
	} else {
		FUNC2 ("music <musicfile> [loopfile]\n");
		return;
	}

}