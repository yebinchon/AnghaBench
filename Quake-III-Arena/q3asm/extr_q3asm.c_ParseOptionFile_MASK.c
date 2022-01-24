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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void**) ; 
 int MAX_OS_PATH ; 
 int /*<<< orphan*/ * asmFileNames ; 
 char const* com_token ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 size_t numAsmFiles ; 
 char* outputFilename ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

void FUNC6( const char *filename ) {
	char		expanded[MAX_OS_PATH];
	char		*text, *text_p;

	FUNC5( expanded, filename );
	FUNC1( expanded, ".q3asm" );
	FUNC2( expanded, (void **)&text );
	if ( !text ) {
		return;
	}

	text_p = text;

	while( ( text_p = FUNC0( text_p ) ) != 0 ) {
		if ( !FUNC4( com_token, "-o" ) ) {
			// allow output override in option file
			text_p = FUNC0( text_p );
			if ( text_p ) {
				FUNC5( outputFilename, com_token );
			}
			continue;
		}

		asmFileNames[ numAsmFiles ] = FUNC3( com_token );
		numAsmFiles++;
	}
}