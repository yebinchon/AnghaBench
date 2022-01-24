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
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 int MAX_INFO_VALUE ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5( void ) {
	int		n;
	char	key[16];
	char	awardData[MAX_INFO_VALUE];

	FUNC3( "g_spAwards", awardData, MAX_INFO_VALUE );

	for( n = 0; n < 6; n++ ) {
		FUNC0( key, sizeof(key), "a%i", n );
		FUNC1( awardData, key, "100" );
	}

	FUNC2( "g_spAwards", awardData );

	FUNC4( "All levels unlocked at 100\n" );
}