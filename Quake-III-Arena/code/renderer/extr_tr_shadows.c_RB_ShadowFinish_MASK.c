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
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int stencilBits; } ;
struct TYPE_5__ {int integer; } ;
struct TYPE_4__ {int /*<<< orphan*/  whiteImage; } ;

/* Variables and functions */
 int GLS_DEPTHMASK_TRUE ; 
 int GLS_DSTBLEND_ZERO ; 
 int GLS_SRCBLEND_DST_COLOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_CLIP_PLANE0 ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_NOTEQUAL ; 
 int /*<<< orphan*/  GL_QUADS ; 
 int /*<<< orphan*/  GL_STENCIL_TEST ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__ glConfig ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float,float,float) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int,int) ; 
 TYPE_2__* r_shadows ; 
 TYPE_1__ tr ; 

void FUNC11( void ) {
	if ( r_shadows->integer != 2 ) {
		return;
	}
	if ( glConfig.stencilBits < 4 ) {
		return;
	}
	FUNC6( GL_STENCIL_TEST );
	FUNC9( GL_NOTEQUAL, 0, 255 );

	FUNC5 (GL_CLIP_PLANE0);
	FUNC5 (GL_CULL_FACE);

	FUNC0( tr.whiteImage );

    FUNC8 ();

	FUNC3( 0.6f, 0.6f, 0.6f );
	FUNC1( GLS_DEPTHMASK_TRUE | GLS_SRCBLEND_DST_COLOR | GLS_DSTBLEND_ZERO );

//	qglColor3f( 1, 0, 0 );
//	GL_State( GLS_DEPTHMASK_TRUE | GLS_SRCBLEND_ONE | GLS_DSTBLEND_ZERO );

	FUNC2( GL_QUADS );
	FUNC10( -100, 100, -10 );
	FUNC10( 100, 100, -10 );
	FUNC10( 100, -100, -10 );
	FUNC10( -100, -100, -10 );
	FUNC7 ();

	FUNC4(1,1,1,1);
	FUNC5( GL_STENCIL_TEST );
}