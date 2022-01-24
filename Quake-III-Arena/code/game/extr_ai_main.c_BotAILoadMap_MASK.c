#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  string; } ;
typedef  TYPE_1__ vmCvar_t ;
struct TYPE_6__ {int setupcount; scalar_t__ inuse; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int CVAR_ROM ; 
 int CVAR_SERVERINFO ; 
 int MAX_CLIENTS ; 
 TYPE_3__** botstates ; 
 int qtrue ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*,int) ; 

int FUNC4( int restart ) {
	int			i;
	vmCvar_t	mapname;

	if (!restart) {
		FUNC3( &mapname, "mapname", "", CVAR_SERVERINFO | CVAR_ROM );
		FUNC2( mapname.string );
	}

	for (i = 0; i < MAX_CLIENTS; i++) {
		if (botstates[i] && botstates[i]->inuse) {
			FUNC0( botstates[i] );
			botstates[i]->setupcount = 4;
		}
	}

	FUNC1();

	return qtrue;
}