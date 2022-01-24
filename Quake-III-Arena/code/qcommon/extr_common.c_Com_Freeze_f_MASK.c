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
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 float FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (void) {
	float	s;
	int		start, now;

	if ( FUNC0() != 2 ) {
		FUNC3( "freeze <seconds>\n" );
		return;
	}
	s = FUNC4( FUNC1(1) );

	start = FUNC2();

	while ( 1 ) {
		now = FUNC2();
		if ( ( now - start ) * 0.001 > s ) {
			break;
		}
	}
}