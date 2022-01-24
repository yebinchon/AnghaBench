#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int glStateBits; } ;
struct TYPE_3__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 int GLS_DEPTHMASK_TRUE ; 
 int GLS_DEPTHTEST_DISABLE ; 
 int /*<<< orphan*/  GL_BLEND ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  GL_FILL ; 
 int /*<<< orphan*/  GL_FRONT ; 
 int /*<<< orphan*/  GL_FRONT_AND_BACK ; 
 int /*<<< orphan*/  GL_LEQUAL ; 
 int /*<<< orphan*/  GL_MODULATE ; 
 int /*<<< orphan*/  GL_SCISSOR_TEST ; 
 int /*<<< orphan*/  GL_SMOOTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_VERTEX_ARRAY ; 
 TYPE_2__ glState ; 
 scalar_t__ qglActiveTextureARB ; 
 int /*<<< orphan*/  FUNC3 (float) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__* r_textureMode ; 

void FUNC13( void )
{
	FUNC3( 1.0f );

	FUNC5(GL_FRONT);

	FUNC4 (1,1,1,1);

	// initialize downstream texture unit if we're running
	// in a multitexture environment
	if ( qglActiveTextureARB ) {
		FUNC0( 1 );
		FUNC2( r_textureMode->string );
		FUNC1( GL_MODULATE );
		FUNC8( GL_TEXTURE_2D );
		FUNC0( 0 );
	}

	FUNC9(GL_TEXTURE_2D);
	FUNC2( r_textureMode->string );
	FUNC1( GL_MODULATE );

	FUNC12( GL_SMOOTH );
	FUNC6( GL_LEQUAL );

	// the vertex array is always enabled, but the color and texture
	// arrays are enabled and disabled around the compiled vertex array call
	FUNC10 (GL_VERTEX_ARRAY);

	//
	// make sure our GL state vector is set correctly
	//
	glState.glStateBits = GLS_DEPTHTEST_DISABLE | GLS_DEPTHMASK_TRUE;

	FUNC11 (GL_FRONT_AND_BACK, GL_FILL);
	FUNC7( GL_TRUE );
	FUNC8( GL_DEPTH_TEST );
	FUNC9( GL_SCISSOR_TEST );
	FUNC8( GL_CULL_FACE );
	FUNC8( GL_BLEND );
}