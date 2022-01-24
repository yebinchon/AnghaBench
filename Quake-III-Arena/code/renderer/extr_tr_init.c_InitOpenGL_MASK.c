#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ vidWidth; scalar_t__ maxTextureSize; int /*<<< orphan*/  renderer_string; } ;
typedef  scalar_t__ GLint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_MAX_TEXTURE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ glConfig ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7( void )
{
	char renderer_buffer[1024];

	//
	// initialize OS specific portions of the renderer
	//
	// GLimp_Init directly or indirectly references the following cvars:
	//		- r_fullscreen
	//		- r_glDriver
	//		- r_mode
	//		- r_(color|depth|stencil)bits
	//		- r_ignorehwgamma
	//		- r_gamma
	//
	
	if ( glConfig.vidWidth == 0 )
	{
		GLint		temp;
		
		FUNC1();

		FUNC6( renderer_buffer, glConfig.renderer_string );
		FUNC3( renderer_buffer );

		// OpenGL driver constants
		FUNC5( GL_MAX_TEXTURE_SIZE, &temp );
		glConfig.maxTextureSize = temp;

		// stubbed or broken drivers may have reported 0...
		if ( glConfig.maxTextureSize <= 0 ) 
		{
			glConfig.maxTextureSize = 0;
		}
	}

	// init command buffers and SMP
	FUNC4();

	// print info
	FUNC2();

	// set default state
	FUNC0();
}