#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  videos ;
typedef  int /*<<< orphan*/  qboolean ;
typedef  int /*<<< orphan*/  key ;
struct TYPE_2__ {scalar_t__ demoversion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int MAX_INFO_VALUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 TYPE_1__ uis ; 

qboolean FUNC4( int tier ) {
	char	key[16];
	char	videos[MAX_INFO_VALUE];

	if( !tier ) {
		return qfalse;
	}

	if( uis.demoversion && tier != 8 ) {
		return qfalse;
	}

	FUNC3( "g_spVideos", videos, sizeof(videos) );

	FUNC0( key, sizeof(key), "tier%i", tier );
	if( FUNC2( FUNC1( videos, key ) ) ) {
		return qtrue;
	}

	return qfalse;
}