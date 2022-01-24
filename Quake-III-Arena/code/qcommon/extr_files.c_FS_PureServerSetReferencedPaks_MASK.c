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
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int MAX_SEARCH_PATHS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int fs_numServerReferencedPaks ; 
 int /*<<< orphan*/ ** fs_serverReferencedPakNames ; 
 int /*<<< orphan*/ * fs_serverReferencedPaks ; 

void FUNC6( const char *pakSums, const char *pakNames ) {
	int		i, c, d;

	FUNC2( pakSums );

	c = FUNC0();
	if ( c > MAX_SEARCH_PATHS ) {
		c = MAX_SEARCH_PATHS;
	}

	fs_numServerReferencedPaks = c;

	for ( i = 0 ; i < c ; i++ ) {
		fs_serverReferencedPaks[i] = FUNC5( FUNC1( i ) );
	}

	for ( i = 0 ; i < c ; i++ ) {
		if (fs_serverReferencedPakNames[i]) {
			FUNC4(fs_serverReferencedPakNames[i]);
		}
		fs_serverReferencedPakNames[i] = NULL;
	}
	if ( pakNames && *pakNames ) {
		FUNC2( pakNames );

		d = FUNC0();
		if ( d > MAX_SEARCH_PATHS ) {
			d = MAX_SEARCH_PATHS;
		}

		for ( i = 0 ; i < d ; i++ ) {
			fs_serverReferencedPakNames[i] = FUNC3( FUNC1( i ) );
		}
	}
}