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
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int MAX_STRING_TOKENS ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

void FUNC6( void ) {
	int		i, c, l, len;
	char	combined[MAX_STRING_TOKENS];

	c = FUNC0();
	if ( c < 3 ) {
		FUNC2 ("usage: set <variable> <value>\n");
		return;
	}

	combined[0] = 0;
	l = 0;
	for ( i = 2 ; i < c ; i++ ) {
		len = FUNC5 ( FUNC1( i ) + 1 );
		if ( l + len >= MAX_STRING_TOKENS - 2 ) {
			break;
		}
		FUNC4( combined, FUNC1( i ) );
		if ( i != c-1 ) {
			FUNC4( combined, " " );
		}
		l += len;
	}
	FUNC3 (FUNC1(1), combined, qfalse);
}