#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_5__ {int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; struct TYPE_5__* next; } ;
typedef  TYPE_1__ bspbrush_t ;
struct TYPE_6__ {TYPE_1__* brushes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,scalar_t__*) ; 
 char* FUNC4 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 TYPE_2__* mapent ; 

void FUNC7( vec3_t mins, vec3_t maxs, vec3_t size ) {
	bspbrush_t	*brush;
	int			i;
	const char  *key;

	// calculate the size of the terrain
	FUNC1( mins, maxs );
	for( brush = mapent->brushes; brush != NULL; brush = brush->next ) {
		FUNC0( brush->mins, mins, maxs );
		FUNC0( brush->maxs, mins, maxs );
	}

	key = FUNC4( mapent, "min" ); 
	if ( key[ 0 ] ) {
		FUNC3( mapent, "min", mins );
	}

	key = FUNC4( mapent, "max" ); 
	if ( key[ 0 ] ) {
		FUNC3( mapent, "max", maxs );
	}

	for( i = 0; i < 3; i++ ) {
		mins[ i ] =  FUNC6( mins[ i ] + 0.1 );
		maxs[ i ] =  FUNC6( maxs[ i ] + 0.1 );
	}

	FUNC5( maxs, mins, size );

	if ( ( size[ 0 ] <= 0 ) || ( size[ 1 ] <= 0 ) ) {
		FUNC2 ("CalcTerrainSize: Invalid terrain size: %fx%f", size[ 0 ], size[ 1 ] );
	}
}