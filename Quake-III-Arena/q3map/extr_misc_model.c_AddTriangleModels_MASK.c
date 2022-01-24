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
typedef  scalar_t__* vec3_t ;
typedef  int /*<<< orphan*/  tree_t ;
typedef  int /*<<< orphan*/  entity_t ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,scalar_t__*,float,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,scalar_t__*,float,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  c_triangleIndexes ; 
 int /*<<< orphan*/  c_triangleModels ; 
 int /*<<< orphan*/  c_triangleSurfaces ; 
 int /*<<< orphan*/  c_triangleVertexes ; 
 int /*<<< orphan*/ * entities ; 
 int num_entities ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

void FUNC9( tree_t *tree ) {
	int			entity_num;
	entity_t	*entity;

	FUNC7("----- AddTriangleModels -----\n");

	for ( entity_num=1 ; entity_num< num_entities ; entity_num++ ) {
		entity = &entities[entity_num];
	
		// convert misc_models into raw geometry
		if ( !FUNC4( "misc_model", FUNC5( entity, "classname" ) ) ) {
			const char	*model;
			vec3_t	origin;
			float	angle;

			// get the angle for rotation  FIXME: support full matrix positioning
			angle = FUNC0( entity, "angle" );

			FUNC1( entity, "origin", origin );

			model = FUNC5( entity, "model" );
			if ( !model[0] ) {
				FUNC6("WARNING: misc_model at %i %i %i without a model key\n", (int)origin[0],
					(int)origin[1], (int)origin[2] );
				continue;
			}
			if ( FUNC8( model, ".md3" ) || FUNC8( model, ".MD3" ) ) {
				FUNC3( model, origin, angle, tree );
				continue;
			}
			if ( FUNC8( model, ".ase" ) || FUNC8( model, ".ASE" ) ) {
				FUNC2( model, origin, angle, tree );
				continue;
			}
			FUNC6( "Unknown misc_model type: %s\n", model );
			continue;
		}
	}

	FUNC7( "%5i triangle models\n", c_triangleModels );
	FUNC7( "%5i triangle surfaces\n", c_triangleSurfaces );
	FUNC7( "%5i triangle vertexes\n", c_triangleVertexes );
	FUNC7( "%5i triangle indexes\n", c_triangleIndexes );
}