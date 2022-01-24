#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_13__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  string; } ;
typedef  TYPE_1__ cvar_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_18__ {int /*<<< orphan*/  (* Cvar_Set ) (char*,char*) ;TYPE_1__* (* Cvar_Get ) (char*,char*,int) ;int /*<<< orphan*/  (* Error ) (int /*<<< orphan*/ ,char*) ;int /*<<< orphan*/  (* Printf ) (int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_16__ {int /*<<< orphan*/  hInstance; } ;
struct TYPE_15__ {char* vendor_string; char* renderer_string; char* version_string; char* extensions_string; int /*<<< orphan*/  hardwareType; } ;
struct TYPE_14__ {int /*<<< orphan*/  wndproc; } ;

/* Variables and functions */
 int CVAR_ARCHIVE ; 
 int CVAR_LATCH ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  GLHW_3DFX_2D3D ; 
 int /*<<< orphan*/  GLHW_GENERIC ; 
 int /*<<< orphan*/  GLHW_PERMEDIA2 ; 
 int /*<<< orphan*/  GLHW_RAGEPRO ; 
 int /*<<< orphan*/  GLHW_RIVA128 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  GL_EXTENSIONS ; 
 int /*<<< orphan*/  GL_RENDERER ; 
 int /*<<< orphan*/  GL_VENDOR ; 
 int /*<<< orphan*/  GL_VERSION ; 
 int /*<<< orphan*/  PRINT_ALL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_13__ g_wv ; 
 TYPE_12__ glConfig ; 
 TYPE_11__ glw_state ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* r_allowSoftwareGL ; 
 TYPE_1__* r_maskMinidriver ; 
 TYPE_8__ ri ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 TYPE_1__* FUNC10 (char*,char*,int) ; 
 TYPE_1__* FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC18 (char*,char*,int) ; 
 TYPE_1__* FUNC19 (char*,char*,int) ; 
 TYPE_1__* FUNC20 (char*,char*,int) ; 
 TYPE_1__* FUNC21 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*,char*) ; 

void FUNC24( void )
{
	char	buf[1024];
	cvar_t *lastValidRenderer = ri.Cvar_Get( "r_lastValidRenderer", "(uninitialized)", CVAR_ARCHIVE );
	cvar_t	*cv;

	ri.Printf( PRINT_ALL, "Initializing OpenGL subsystem\n" );

	//
	// check OS version to see if we can do fullscreen display changes
	//
	if ( !FUNC0() )
	{
		ri.Error( ERR_FATAL, "GLimp_Init() - incorrect operating system\n" );
	}

	// save off hInstance and wndproc
	cv = ri.Cvar_Get( "win_hinstance", "", 0 );
	FUNC8( cv->string, "%i", (int *)&g_wv.hInstance );

	cv = ri.Cvar_Get( "win_wndproc", "", 0 );
	FUNC8( cv->string, "%i", (int *)&glw_state.wndproc );

	r_allowSoftwareGL = ri.Cvar_Get( "r_allowSoftwareGL", "0", CVAR_LATCH );
	r_maskMinidriver = ri.Cvar_Get( "r_maskMinidriver", "0", CVAR_LATCH );

	// load appropriate DLL and initialize subsystem
	FUNC2();

	// get our config strings
	FUNC5( glConfig.vendor_string, FUNC7 (GL_VENDOR), sizeof( glConfig.vendor_string ) );
	FUNC5( glConfig.renderer_string, FUNC7 (GL_RENDERER), sizeof( glConfig.renderer_string ) );
	FUNC5( glConfig.version_string, FUNC7 (GL_VERSION), sizeof( glConfig.version_string ) );
	FUNC5( glConfig.extensions_string, FUNC7 (GL_EXTENSIONS), sizeof( glConfig.extensions_string ) );

	//
	// chipset specific configuration
	//
	FUNC5( buf, glConfig.renderer_string, sizeof(buf) );
	FUNC4( buf );

	//
	// NOTE: if changing cvars, do it within this block.  This allows them
	// to be overridden when testing driver fixes, etc. but only sets
	// them to their default state when the hardware is first installed/run.
	//
	if ( FUNC3( lastValidRenderer->string, glConfig.renderer_string ) )
	{
		glConfig.hardwareType = GLHW_GENERIC;

		ri.Cvar_Set( "r_textureMode", "GL_LINEAR_MIPMAP_NEAREST" );

		// VOODOO GRAPHICS w/ 2MB
		if ( FUNC9( buf, "voodoo graphics/1 tmu/2 mb" ) )
		{
			ri.Cvar_Set( "r_picmip", "2" );
			ri.Cvar_Get( "r_picmip", "1", CVAR_ARCHIVE | CVAR_LATCH );
		}
		else
		{
			ri.Cvar_Set( "r_picmip", "1" );

			if ( FUNC9( buf, "rage 128" ) || FUNC9( buf, "rage128" ) )
			{
				ri.Cvar_Set( "r_finish", "0" );
			}
			// Savage3D and Savage4 should always have trilinear enabled
			else if ( FUNC9( buf, "savage3d" ) || FUNC9( buf, "s3 savage4" ) )
			{
				ri.Cvar_Set( "r_texturemode", "GL_LINEAR_MIPMAP_LINEAR" );
			}
		}
	}
	
	//
	// this is where hardware specific workarounds that should be
	// detected/initialized every startup should go.
	//
	if ( FUNC9( buf, "banshee" ) || FUNC9( buf, "voodoo3" ) )
	{
		glConfig.hardwareType = GLHW_3DFX_2D3D;
	}
	// VOODOO GRAPHICS w/ 2MB
	else if ( FUNC9( buf, "voodoo graphics/1 tmu/2 mb" ) )
	{
	}
	else if ( FUNC9( buf, "glzicd" ) )
	{
	}
	else if ( FUNC9( buf, "rage pro" ) || FUNC9( buf, "Rage Pro" ) || FUNC9( buf, "ragepro" ) )
	{
		glConfig.hardwareType = GLHW_RAGEPRO;
	}
	else if ( FUNC9( buf, "rage 128" ) )
	{
	}
	else if ( FUNC9( buf, "permedia2" ) )
	{
		glConfig.hardwareType = GLHW_PERMEDIA2;
	}
	else if ( FUNC9( buf, "riva 128" ) )
	{
		glConfig.hardwareType = GLHW_RIVA128;
	}
	else if ( FUNC9( buf, "riva tnt " ) )
	{
	}

	ri.Cvar_Set( "r_lastValidRenderer", glConfig.renderer_string );

	FUNC1();
	FUNC6();
}