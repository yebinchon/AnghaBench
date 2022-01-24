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
typedef  int /*<<< orphan*/  videos ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int MAX_INFO_VALUE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

qboolean FUNC7( int tier ) {
	char	key[16];
	char	videos[MAX_INFO_VALUE];

	if( tier <= 0 ) {
		return qfalse;
	}

	FUNC5( "g_spVideos", videos, sizeof(videos) );

	FUNC0( key, sizeof(key), "tier%i", tier );
	if( FUNC3( FUNC2( videos, key ) ) ) {
		return qfalse;
	}

	FUNC1( videos, key, FUNC6( "%i", 1 ) );
	FUNC4( "g_spVideos", videos );

	return qtrue;
}