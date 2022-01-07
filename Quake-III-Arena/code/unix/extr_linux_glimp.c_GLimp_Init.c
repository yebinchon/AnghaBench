
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef void* qboolean ;
struct TYPE_12__ {char* string; } ;
typedef TYPE_1__ cvar_t ;
struct TYPE_14__ {char* string; void* modified; } ;
struct TYPE_13__ {int (* Cvar_Set ) (char*,char*) ;TYPE_1__* (* Cvar_Get ) (char*,char*,int) ;int (* Error ) (int ,char*) ;} ;
struct TYPE_11__ {char* vendor_string; char* renderer_string; char* version_string; char* extensions_string; void* hardwareType; int driverType; } ;


 int CVAR_ARCHIVE ;
 int CVAR_LATCH ;
 int CVAR_ROM ;
 int Com_Printf (char*) ;
 int ERR_FATAL ;
 int GLDRV_ICD ;
 void* GLHW_3DFX_2D3D ;
 void* GLHW_GENERIC ;
 void* GLHW_PERMEDIA2 ;
 void* GLHW_RAGEPRO ;
 void* GLHW_RIVA128 ;
 int GLW_InitExtensions () ;
 int GLW_InitGamma () ;
 scalar_t__ GLW_LoadOpenGL (char*) ;
 int GL_EXTENSIONS ;
 int GL_RENDERER ;
 int GL_VENDOR ;
 int GL_VERSION ;
 int InitSig () ;
 char* OPENGL_DRIVER_NAME ;
 scalar_t__ Q_stricmp (char*,char*) ;
 scalar_t__ Q_stristr (char*,char*) ;
 int Q_strncpyz (char*,int ,int) ;
 int XInitThreads () ;
 int XSetErrorHandler (int *) ;
 char* _3DFX_DRIVER_NAME ;
 TYPE_10__ glConfig ;
 int qXErrorHandler ;
 void* qfalse ;
 int qglGetString (int ) ;
 void* qtrue ;
 TYPE_1__* r_allowSoftwareGL ;
 TYPE_8__* r_glDriver ;
 TYPE_1__* r_previousglDriver ;
 TYPE_6__ ri ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strlwr (char*) ;
 TYPE_1__* stub1 (char*,char*,int) ;
 int stub10 (char*,char*) ;
 int stub11 (char*,char*) ;
 TYPE_1__* stub12 (char*,char*,int) ;
 int stub13 (char*,char*) ;
 int stub14 (char*,char*) ;
 int stub15 (char*,char*) ;
 int stub16 (char*,char*) ;
 int stub2 (char*,char*) ;
 TYPE_1__* stub3 (char*,char*,int) ;
 TYPE_1__* stub4 (char*,char*,int) ;
 int stub5 (char*,char*) ;
 int stub6 (char*,char*) ;
 int stub7 (char*,char*) ;
 int stub8 (int ,char*) ;
 int stub9 (char*,char*) ;

void GLimp_Init( void )
{
  qboolean attemptedlibGL = qfalse;
  qboolean attempted3Dfx = qfalse;
  qboolean success = qfalse;
  char buf[1024];
  cvar_t *lastValidRenderer = ri.Cvar_Get( "r_lastValidRenderer", "(uninitialized)", CVAR_ARCHIVE );
  r_allowSoftwareGL = ri.Cvar_Get( "r_allowSoftwareGL", "0", CVAR_LATCH );

  r_previousglDriver = ri.Cvar_Get( "r_previousglDriver", "", CVAR_ROM );

  InitSig();


  if ( *r_previousglDriver->string )
  {


    ri.Cvar_Set( "r_glDriver", r_previousglDriver->string );
  }


  XSetErrorHandler(&qXErrorHandler);




  if ( !GLW_LoadOpenGL( r_glDriver->string ) )
  {
    if ( !Q_stricmp( r_glDriver->string, OPENGL_DRIVER_NAME ) )
    {
      attemptedlibGL = qtrue;
    } else if ( !Q_stricmp( r_glDriver->string, _3DFX_DRIVER_NAME ) )
    {
      attempted3Dfx = qtrue;
    }
    if ( !attemptedlibGL && !success )
    {
      attemptedlibGL = qtrue;
      if ( GLW_LoadOpenGL( OPENGL_DRIVER_NAME ) )
      {
        ri.Cvar_Set( "r_glDriver", OPENGL_DRIVER_NAME );
        r_glDriver->modified = qfalse;
        success = qtrue;
      }
    }

    if (!success)
      ri.Error( ERR_FATAL, "GLimp_Init() - could not load OpenGL subsystem\n" );

  }


  ri.Cvar_Set( "r_previousglDriver", r_glDriver->string );


  glConfig.driverType = GLDRV_ICD;
  glConfig.hardwareType = GLHW_GENERIC;


  Q_strncpyz( glConfig.vendor_string, qglGetString (GL_VENDOR), sizeof( glConfig.vendor_string ) );
  Q_strncpyz( glConfig.renderer_string, qglGetString (GL_RENDERER), sizeof( glConfig.renderer_string ) );
  if (*glConfig.renderer_string && glConfig.renderer_string[strlen(glConfig.renderer_string) - 1] == '\n')
    glConfig.renderer_string[strlen(glConfig.renderer_string) - 1] = 0;
  Q_strncpyz( glConfig.version_string, qglGetString (GL_VERSION), sizeof( glConfig.version_string ) );
  Q_strncpyz( glConfig.extensions_string, qglGetString (GL_EXTENSIONS), sizeof( glConfig.extensions_string ) );




  strcpy( buf, glConfig.renderer_string );
  strlwr( buf );






  if ( Q_stricmp( lastValidRenderer->string, glConfig.renderer_string ) )
  {
    glConfig.hardwareType = GLHW_GENERIC;

    ri.Cvar_Set( "r_textureMode", "GL_LINEAR_MIPMAP_NEAREST" );


    if ( Q_stristr( buf, "voodoo graphics/1 tmu/2 mb" ) )
    {
      ri.Cvar_Set( "r_picmip", "2" );
      ri.Cvar_Get( "r_picmip", "1", CVAR_ARCHIVE | CVAR_LATCH );
    } else
    {
      ri.Cvar_Set( "r_picmip", "1" );

      if ( Q_stristr( buf, "rage 128" ) || Q_stristr( buf, "rage128" ) )
      {
        ri.Cvar_Set( "r_finish", "0" );
      }

      else if ( Q_stristr( buf, "savage3d" ) || Q_stristr( buf, "s3 savage4" ) )
      {
        ri.Cvar_Set( "r_texturemode", "GL_LINEAR_MIPMAP_LINEAR" );
      }
    }
  }





  if ( Q_stristr( buf, "banshee" ) || Q_stristr( buf, "Voodoo_Graphics" ) )
  {
    glConfig.hardwareType = GLHW_3DFX_2D3D;
  } else if ( Q_stristr( buf, "rage pro" ) || Q_stristr( buf, "RagePro" ) )
  {
    glConfig.hardwareType = GLHW_RAGEPRO;
  } else if ( Q_stristr( buf, "permedia2" ) )
  {
    glConfig.hardwareType = GLHW_PERMEDIA2;
  } else if ( Q_stristr( buf, "riva 128" ) )
  {
    glConfig.hardwareType = GLHW_RIVA128;
  } else if ( Q_stristr( buf, "riva tnt " ) )
  {
  }

  ri.Cvar_Set( "r_lastValidRenderer", glConfig.renderer_string );


  GLW_InitExtensions();
  GLW_InitGamma();

  InitSig();

  return;
}
