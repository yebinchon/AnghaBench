#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ qboolean ;
struct TYPE_4__ {scalar_t__ modificationCount; scalar_t__ teamShader; TYPE_2__* vmCvar; int /*<<< orphan*/  cvarName; scalar_t__ trackChange; } ;
typedef  TYPE_1__ cvarTable_t ;
struct TYPE_5__ {scalar_t__ modificationCount; int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* gameCvarTable ; 
 int gameCvarTableSize ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4( void ) {
	int			i;
	cvarTable_t	*cv;
	qboolean remapped = qfalse;

	for ( i = 0, cv = gameCvarTable ; i < gameCvarTableSize ; i++, cv++ ) {
		if ( cv->vmCvar ) {
			FUNC1( cv->vmCvar );

			if ( cv->modificationCount != cv->vmCvar->modificationCount ) {
				cv->modificationCount = cv->vmCvar->modificationCount;

				if ( cv->trackChange ) {
					FUNC2( -1, FUNC3("print \"Server: %s changed to %s\n\"", 
						cv->cvarName, cv->vmCvar->string ) );
				}

				if (cv->teamShader) {
					remapped = qtrue;
				}
			}
		}
	}

	if (remapped) {
		FUNC0();
	}
}