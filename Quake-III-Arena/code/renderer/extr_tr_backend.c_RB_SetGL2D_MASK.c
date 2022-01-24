#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {float time; float floatTime; } ;
struct TYPE_8__ {TYPE_1__ refdef; int /*<<< orphan*/  projection2D; } ;
struct TYPE_7__ {int /*<<< orphan*/  vidHeight; int /*<<< orphan*/  vidWidth; } ;
struct TYPE_6__ {float (* Milliseconds ) () ;} ;

/* Variables and functions */
 int GLS_DEPTHTEST_DISABLE ; 
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ; 
 int GLS_SRCBLEND_SRC_ALPHA ; 
 int /*<<< orphan*/  GL_CLIP_PLANE0 ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  GL_PROJECTION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_4__ backEnd ; 
 TYPE_3__ glConfig ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qtrue ; 
 TYPE_2__ ri ; 
 float FUNC7 () ; 

void	FUNC8 (void) {
	backEnd.projection2D = qtrue;

	// set 2D virtual screen size
	FUNC6( 0, 0, glConfig.vidWidth, glConfig.vidHeight );
	FUNC5( 0, 0, glConfig.vidWidth, glConfig.vidHeight );
	FUNC3(GL_PROJECTION);
    FUNC2 ();
	FUNC4 (0, glConfig.vidWidth, glConfig.vidHeight, 0, 0, 1);
	FUNC3(GL_MODELVIEW);
    FUNC2 ();

	FUNC0( GLS_DEPTHTEST_DISABLE |
			  GLS_SRCBLEND_SRC_ALPHA |
			  GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA );

	FUNC1( GL_CULL_FACE );
	FUNC1( GL_CLIP_PLANE0 );

	// set time for 2D shaders
	backEnd.refdef.time = ri.Milliseconds();
	backEnd.refdef.floatTime = backEnd.refdef.time * 0.001f;
}