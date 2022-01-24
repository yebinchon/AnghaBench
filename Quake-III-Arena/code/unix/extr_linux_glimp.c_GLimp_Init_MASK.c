#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  void* qboolean ;
struct TYPE_12__ {char* string; } ;
typedef  TYPE_1__ cvar_t ;
struct TYPE_14__ {char* string; void* modified; } ;
struct TYPE_13__ {int /*<<< orphan*/  (* Cvar_Set ) (char*,char*) ;TYPE_1__* (* Cvar_Get ) (char*,char*,int) ;int /*<<< orphan*/  (* Error ) (int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_11__ {char* vendor_string; char* renderer_string; char* version_string; char* extensions_string; void* hardwareType; int /*<<< orphan*/  driverType; } ;

/* Variables and functions */
 int CVAR_ARCHIVE ; 
 int CVAR_LATCH ; 
 int CVAR_ROM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  GLDRV_ICD ; 
 void* GLHW_3DFX_2D3D ; 
 void* GLHW_GENERIC ; 
 void* GLHW_PERMEDIA2 ; 
 void* GLHW_RAGEPRO ; 
 void* GLHW_RIVA128 ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  GL_EXTENSIONS ; 
 int /*<<< orphan*/  GL_RENDERER ; 
 int /*<<< orphan*/  GL_VENDOR ; 
 int /*<<< orphan*/  GL_VERSION ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* OPENGL_DRIVER_NAME ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 char* _3DFX_DRIVER_NAME ; 
 TYPE_10__ glConfig ; 
 int /*<<< orphan*/  qXErrorHandler ; 
 void* qfalse ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 void* qtrue ; 
 TYPE_1__* r_allowSoftwareGL ; 
 TYPE_8__* r_glDriver ; 
 TYPE_1__* r_previousglDriver ; 
 TYPE_6__ ri ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 TYPE_1__* FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 TYPE_1__* FUNC17 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 TYPE_1__* FUNC23 (char*,char*,int) ; 
 TYPE_1__* FUNC24 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC29 (char*,char*) ; 

void FUNC30( void )
{
  qboolean attemptedlibGL = qfalse;
  qboolean attempted3Dfx = qfalse;
  qboolean success = qfalse;
  char  buf[1024];
  cvar_t *lastValidRenderer = ri.Cvar_Get( "r_lastValidRenderer", "(uninitialized)", CVAR_ARCHIVE );

  // guarded, as this is only relevant to SMP renderer thread
#ifdef SMP
  if (!XInitThreads())
  {
    Com_Printf("GLimp_Init() - XInitThreads() failed, disabling r_smp\n");
    ri.Cvar_Set( "r_smp", "0" );
  }
#endif

  r_allowSoftwareGL = ri.Cvar_Get( "r_allowSoftwareGL", "0", CVAR_LATCH );

  r_previousglDriver = ri.Cvar_Get( "r_previousglDriver", "", CVAR_ROM );

  FUNC4();

  // Hack here so that if the UI 
  if ( *r_previousglDriver->string )
  {
    // The UI changed it on us, hack it back
    // This means the renderer can't be changed on the fly
    ri.Cvar_Set( "r_glDriver", r_previousglDriver->string );
  }
  
  // set up our custom error handler for X failures
  FUNC9(&qXErrorHandler);

  //
  // load and initialize the specific OpenGL driver
  //
  if ( !FUNC3( r_glDriver->string ) )
  {
    if ( !FUNC5( r_glDriver->string, OPENGL_DRIVER_NAME ) )
    {
      attemptedlibGL = qtrue;
    } else if ( !FUNC5( r_glDriver->string, _3DFX_DRIVER_NAME ) )
    {
      attempted3Dfx = qtrue;
    }

    #if 0
    // TTimo
    // https://zerowing.idsoftware.com/bugzilla/show_bug.cgi?id=455
    // old legacy load code, was confusing people who had a bad OpenGL setup
    if ( !attempted3Dfx && !success )
    {
      attempted3Dfx = qtrue;
      if ( GLW_LoadOpenGL( _3DFX_DRIVER_NAME ) )
      {
        ri.Cvar_Set( "r_glDriver", _3DFX_DRIVER_NAME );
        r_glDriver->modified = qfalse;
        success = qtrue;
      }
    }
    #endif

    // try ICD before trying 3Dfx standalone driver
    if ( !attemptedlibGL && !success )
    {
      attemptedlibGL = qtrue;
      if ( FUNC3( OPENGL_DRIVER_NAME ) )
      {
        ri.Cvar_Set( "r_glDriver", OPENGL_DRIVER_NAME );
        r_glDriver->modified = qfalse;
        success = qtrue;
      }
    }

    if (!success)
      ri.Error( ERR_FATAL, "GLimp_Init() - could not load OpenGL subsystem\n" );

  }

  // Save it in case the UI stomps it
  ri.Cvar_Set( "r_previousglDriver", r_glDriver->string );

  // This values force the UI to disable driver selection
  glConfig.driverType = GLDRV_ICD;
  glConfig.hardwareType = GLHW_GENERIC;

  // get our config strings
  FUNC7( glConfig.vendor_string, FUNC10 (GL_VENDOR), sizeof( glConfig.vendor_string ) );
  FUNC7( glConfig.renderer_string, FUNC10 (GL_RENDERER), sizeof( glConfig.renderer_string ) );
  if (*glConfig.renderer_string && glConfig.renderer_string[FUNC12(glConfig.renderer_string) - 1] == '\n')
    glConfig.renderer_string[FUNC12(glConfig.renderer_string) - 1] = 0;
  FUNC7( glConfig.version_string, FUNC10 (GL_VERSION), sizeof( glConfig.version_string ) );
  FUNC7( glConfig.extensions_string, FUNC10 (GL_EXTENSIONS), sizeof( glConfig.extensions_string ) );

  //
  // chipset specific configuration
  //
  FUNC11( buf, glConfig.renderer_string );
  FUNC13( buf );

  //
  // NOTE: if changing cvars, do it within this block.  This allows them
  // to be overridden when testing driver fixes, etc. but only sets
  // them to their default state when the hardware is first installed/run.
  //
  if ( FUNC5( lastValidRenderer->string, glConfig.renderer_string ) )
  {
    glConfig.hardwareType = GLHW_GENERIC;

    ri.Cvar_Set( "r_textureMode", "GL_LINEAR_MIPMAP_NEAREST" );

    // VOODOO GRAPHICS w/ 2MB
    if ( FUNC6( buf, "voodoo graphics/1 tmu/2 mb" ) )
    {
      ri.Cvar_Set( "r_picmip", "2" );
      ri.Cvar_Get( "r_picmip", "1", CVAR_ARCHIVE | CVAR_LATCH );
    } else
    {
      ri.Cvar_Set( "r_picmip", "1" );

      if ( FUNC6( buf, "rage 128" ) || FUNC6( buf, "rage128" ) )
      {
        ri.Cvar_Set( "r_finish", "0" );
      }
      // Savage3D and Savage4 should always have trilinear enabled
      else if ( FUNC6( buf, "savage3d" ) || FUNC6( buf, "s3 savage4" ) )
      {
        ri.Cvar_Set( "r_texturemode", "GL_LINEAR_MIPMAP_LINEAR" );
      }
    }
  }

  //
  // this is where hardware specific workarounds that should be
  // detected/initialized every startup should go.
  //
  if ( FUNC6( buf, "banshee" ) || FUNC6( buf, "Voodoo_Graphics" ) )
  {
    glConfig.hardwareType = GLHW_3DFX_2D3D;
  } else if ( FUNC6( buf, "rage pro" ) || FUNC6( buf, "RagePro" ) )
  {
    glConfig.hardwareType = GLHW_RAGEPRO;
  } else if ( FUNC6( buf, "permedia2" ) )
  {
    glConfig.hardwareType = GLHW_PERMEDIA2;
  } else if ( FUNC6( buf, "riva 128" ) )
  {
    glConfig.hardwareType = GLHW_RIVA128;
  } else if ( FUNC6( buf, "riva tnt " ) )
  {
  }

  ri.Cvar_Set( "r_lastValidRenderer", glConfig.renderer_string );

  // initialize extensions
  FUNC1();
  FUNC2();

  FUNC4(); // not clear why this is at begin & end of function

  return;
}