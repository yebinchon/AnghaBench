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
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 char const** ui_arenaInfos ; 
 int ui_numArenas ; 

const char *FUNC2( const char *map ) {
	int			n;

	for( n = 0; n < ui_numArenas; n++ ) {
		if( FUNC1( FUNC0( ui_arenaInfos[n], "map" ), map ) == 0 ) {
			return ui_arenaInfos[n];
		}
	}

	return NULL;
}