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
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 char** g_botInfos ; 
 int g_numBots ; 

char *FUNC2( const char *name ) {
	int		n;
	char	*value;

	for ( n = 0; n < g_numBots ; n++ ) {
		value = FUNC0( g_botInfos[n], "name" );
		if ( !FUNC1( value, name ) ) {
			return g_botInfos[n];
		}
	}

	return NULL;
}