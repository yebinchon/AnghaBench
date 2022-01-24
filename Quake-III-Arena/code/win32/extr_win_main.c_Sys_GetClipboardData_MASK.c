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
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  CF_TEXT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,scalar_t__) ; 
 char* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

char *FUNC9( void ) {
	char *data = NULL;
	char *cliptext;

	if ( FUNC5( NULL ) != 0 ) {
		HANDLE hClipboardData;

		if ( ( hClipboardData = FUNC1( CF_TEXT ) ) != 0 ) {
			if ( ( cliptext = FUNC2( hClipboardData ) ) != 0 ) {
				data = FUNC7( FUNC3( hClipboardData ) + 1 );
				FUNC6( data, cliptext, FUNC3( hClipboardData ) );
				FUNC4( hClipboardData );
				
				FUNC8( data, "\n\r\b" );
			}
		}
		FUNC0();
	}
	return data;
}