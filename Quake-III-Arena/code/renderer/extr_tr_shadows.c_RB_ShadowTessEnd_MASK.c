#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_8__ {scalar_t__ isMirror; } ;
struct TYPE_12__ {TYPE_2__ viewParms; TYPE_1__* currentEntity; } ;
struct TYPE_11__ {int stencilBits; } ;
struct TYPE_10__ {int numVertexes; float** xyz; int numIndexes; int* indexes; } ;
struct TYPE_9__ {int /*<<< orphan*/  whiteImage; } ;
struct TYPE_7__ {int /*<<< orphan*/  lightDir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int GLS_DSTBLEND_ZERO ; 
 int GLS_SRCBLEND_ONE ; 
 int /*<<< orphan*/  GL_ALWAYS ; 
 int /*<<< orphan*/  GL_BACK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_DECR ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_FRONT ; 
 int /*<<< orphan*/  GL_INCR ; 
 int /*<<< orphan*/  GL_KEEP ; 
 int /*<<< orphan*/  GL_STENCIL_TEST ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC5 (int,int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int SHADER_MAX_VERTEXES ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (float*,int,int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC9 (float*,float*,int /*<<< orphan*/ ) ; 
 TYPE_6__ backEnd ; 
 int* facing ; 
 TYPE_5__ glConfig ; 
 int /*<<< orphan*/  numEdgeDefs ; 
 int /*<<< orphan*/  FUNC10 (float,float,float) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ tess ; 
 TYPE_3__ tr ; 

void FUNC16( void ) {
	int		i;
	int		numTris;
	vec3_t	lightDir;

	// we can only do this if we have enough space in the vertex buffers
	if ( tess.numVertexes >= SHADER_MAX_VERTEXES / 2 ) {
		return;
	}

	if ( glConfig.stencilBits < 4 ) {
		return;
	}

	FUNC7( backEnd.currentEntity->lightDir, lightDir );

	// project vertexes away from light direction
	for ( i = 0 ; i < tess.numVertexes ; i++ ) {
		FUNC8( tess.xyz[i], -512, lightDir, tess.xyz[i+tess.numVertexes] );
	}

	// decide which triangles face the light
	FUNC0( numEdgeDefs, 0, 4 * tess.numVertexes );

	numTris = tess.numIndexes / 3;
	for ( i = 0 ; i < numTris ; i++ ) {
		int		i1, i2, i3;
		vec3_t	d1, d2, normal;
		float	*v1, *v2, *v3;
		float	d;

		i1 = tess.indexes[ i*3 + 0 ];
		i2 = tess.indexes[ i*3 + 1 ];
		i3 = tess.indexes[ i*3 + 2 ];

		v1 = tess.xyz[ i1 ];
		v2 = tess.xyz[ i2 ];
		v3 = tess.xyz[ i3 ];

		FUNC9( v2, v1, d1 );
		FUNC9( v3, v1, d2 );
		FUNC1( d1, d2, normal );

		d = FUNC2( normal, lightDir );
		if ( d > 0 ) {
			facing[ i ] = 1;
		} else {
			facing[ i ] = 0;
		}

		// create the edges
		FUNC5( i1, i2, facing[ i ] );
		FUNC5( i2, i3, facing[ i ] );
		FUNC5( i3, i1, facing[ i ] );
	}

	// draw the silhouette edges

	FUNC3( tr.whiteImage );
	FUNC13( GL_CULL_FACE );
	FUNC4( GLS_SRCBLEND_ONE | GLS_DSTBLEND_ZERO );
	FUNC10( 0.2f, 0.2f, 0.2f );

	// don't write to the color buffer
	FUNC11( GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE );

	FUNC13( GL_STENCIL_TEST );
	FUNC14( GL_ALWAYS, 1, 255 );

	// mirrors have the culling order reversed
	if ( backEnd.viewParms.isMirror ) {
		FUNC12( GL_FRONT );
		FUNC15( GL_KEEP, GL_KEEP, GL_INCR );

		FUNC6();

		FUNC12( GL_BACK );
		FUNC15( GL_KEEP, GL_KEEP, GL_DECR );

		FUNC6();
	} else {
		FUNC12( GL_BACK );
		FUNC15( GL_KEEP, GL_KEEP, GL_INCR );

		FUNC6();

		FUNC12( GL_FRONT );
		FUNC15( GL_KEEP, GL_KEEP, GL_DECR );

		FUNC6();
	}


	// reenable writing to the color buffer
	FUNC11( GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE );
}