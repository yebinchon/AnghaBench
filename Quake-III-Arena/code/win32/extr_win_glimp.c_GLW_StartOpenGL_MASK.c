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
typedef  void* qboolean ;
struct TYPE_4__ {void* modified; int /*<<< orphan*/  string; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* Error ) (int /*<<< orphan*/ ,char*) ;int /*<<< orphan*/  (* Cvar_Set ) (char*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_FATAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPENGL_DRIVER_NAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _3DFX_DRIVER_NAME ; 
 void* qfalse ; 
 void* qtrue ; 
 TYPE_2__* r_glDriver ; 
 TYPE_1__ ri ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC8( void )
{
	qboolean attemptedOpenGL32 = qfalse;
	qboolean attempted3Dfx = qfalse;

	//
	// load and initialize the specific OpenGL driver
	//
	if ( !FUNC0( r_glDriver->string ) )
	{
		if ( !FUNC1( r_glDriver->string, OPENGL_DRIVER_NAME ) )
		{
			attemptedOpenGL32 = qtrue;
		}
		else if ( !FUNC1( r_glDriver->string, _3DFX_DRIVER_NAME ) )
		{
			attempted3Dfx = qtrue;
		}

		if ( !attempted3Dfx )
		{
			attempted3Dfx = qtrue;
			if ( FUNC0( _3DFX_DRIVER_NAME ) )
			{
				ri.Cvar_Set( "r_glDriver", _3DFX_DRIVER_NAME );
				r_glDriver->modified = qfalse;
			}
			else
			{
				if ( !attemptedOpenGL32 )
				{
					if ( !FUNC0( OPENGL_DRIVER_NAME ) )
					{
						ri.Error( ERR_FATAL, "GLW_StartOpenGL() - could not load OpenGL subsystem\n" );
					}
					ri.Cvar_Set( "r_glDriver", OPENGL_DRIVER_NAME );
					r_glDriver->modified = qfalse;
				}
				else
				{
					ri.Error( ERR_FATAL, "GLW_StartOpenGL() - could not load OpenGL subsystem\n" );
				}
			}
		}
		else if ( !attemptedOpenGL32 )
		{
			attemptedOpenGL32 = qtrue;
			if ( FUNC0( OPENGL_DRIVER_NAME ) )
			{
				ri.Cvar_Set( "r_glDriver", OPENGL_DRIVER_NAME );
				r_glDriver->modified = qfalse;
			}
			else
			{
				ri.Error( ERR_FATAL, "GLW_StartOpenGL() - could not load OpenGL subsystem\n" );
			}
		}
	}
}