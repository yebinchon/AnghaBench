#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
typedef  int /*<<< orphan*/  entity_t ;
struct TYPE_3__ {int numSurfaces; int firstSurface; } ;
typedef  TYPE_1__ dmodel_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*) ; 
 TYPE_1__* dmodels ; 
 int /*<<< orphan*/ * entities ; 
 int /*<<< orphan*/ * entitySurface ; 
 int num_entities ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/ * surfaceOrigin ; 

void FUNC4( void ) {
	int			i, j;
	entity_t	*e;
	vec3_t		origin;
	const char	*key;
	int			modelnum;
	dmodel_t	*dm;

	for ( i=0 ; i < num_entities ; i++ ) {
		e = &entities[i];
		key = FUNC1 (e, "model");
		if ( key[0] != '*' ) {
			continue;
		}
		modelnum = FUNC3( key + 1 );
		dm = &dmodels[ modelnum ];

		// set entity surface to true for all surfaces for this model
		for ( j = 0 ; j < dm->numSurfaces ; j++ ) {
			entitySurface[ dm->firstSurface + j ] = qtrue;
		}

		key = FUNC1 (e, "origin");
		if ( !key[0] ) {
			continue;
		}
		FUNC0 ( e, "origin", origin );

		// set origin for all surfaces for this model
		for ( j = 0 ; j < dm->numSurfaces ; j++ ) {
			FUNC2( origin, surfaceOrigin[ dm->firstSurface + j ] );
		}
	}
}