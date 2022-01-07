
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_13__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;


struct TYPE_17__ {int string; } ;
typedef TYPE_1__ cvar_t ;
typedef int buf ;
struct TYPE_18__ {int (* Cvar_Set ) (char*,char*) ;TYPE_1__* (* Cvar_Get ) (char*,char*,int) ;int (* Error ) (int ,char*) ;int (* Printf ) (int ,char*) ;} ;
struct TYPE_16__ {int hInstance; } ;
struct TYPE_15__ {char* vendor_string; char* renderer_string; char* version_string; char* extensions_string; int hardwareType; } ;
struct TYPE_14__ {int wndproc; } ;


 int CVAR_ARCHIVE ;
 int CVAR_LATCH ;
 int ERR_FATAL ;
 int GLHW_3DFX_2D3D ;
 int GLHW_GENERIC ;
 int GLHW_PERMEDIA2 ;
 int GLHW_RAGEPRO ;
 int GLHW_RIVA128 ;
 int GLW_CheckOSVersion () ;
 int GLW_InitExtensions () ;
 int GLW_StartOpenGL () ;
 int GL_EXTENSIONS ;
 int GL_RENDERER ;
 int GL_VENDOR ;
 int GL_VERSION ;
 int PRINT_ALL ;
 scalar_t__ Q_stricmp (int ,char*) ;
 int Q_strlwr (char*) ;
 int Q_strncpyz (char*,char*,int) ;
 int WG_CheckHardwareGamma () ;
 TYPE_13__ g_wv ;
 TYPE_12__ glConfig ;
 TYPE_11__ glw_state ;
 char* qglGetString (int ) ;
 TYPE_1__* r_allowSoftwareGL ;
 TYPE_1__* r_maskMinidriver ;
 TYPE_8__ ri ;
 int sscanf (int ,char*,int*) ;
 scalar_t__ strstr (char*,char*) ;
 TYPE_1__* stub1 (char*,char*,int) ;
 TYPE_1__* stub10 (char*,char*,int) ;
 int stub11 (char*,char*) ;
 int stub12 (char*,char*) ;
 int stub13 (char*,char*) ;
 int stub14 (char*,char*) ;
 int stub2 (int ,char*) ;
 int stub3 (int ,char*) ;
 TYPE_1__* stub4 (char*,char*,int) ;
 TYPE_1__* stub5 (char*,char*,int) ;
 TYPE_1__* stub6 (char*,char*,int) ;
 TYPE_1__* stub7 (char*,char*,int) ;
 int stub8 (char*,char*) ;
 int stub9 (char*,char*) ;

void GLimp_Init( void )
{
 char buf[1024];
 cvar_t *lastValidRenderer = ri.Cvar_Get( "r_lastValidRenderer", "(uninitialized)", CVAR_ARCHIVE );
 cvar_t *cv;

 ri.Printf( PRINT_ALL, "Initializing OpenGL subsystem\n" );




 if ( !GLW_CheckOSVersion() )
 {
  ri.Error( ERR_FATAL, "GLimp_Init() - incorrect operating system\n" );
 }


 cv = ri.Cvar_Get( "win_hinstance", "", 0 );
 sscanf( cv->string, "%i", (int *)&g_wv.hInstance );

 cv = ri.Cvar_Get( "win_wndproc", "", 0 );
 sscanf( cv->string, "%i", (int *)&glw_state.wndproc );

 r_allowSoftwareGL = ri.Cvar_Get( "r_allowSoftwareGL", "0", CVAR_LATCH );
 r_maskMinidriver = ri.Cvar_Get( "r_maskMinidriver", "0", CVAR_LATCH );


 GLW_StartOpenGL();


 Q_strncpyz( glConfig.vendor_string, qglGetString (GL_VENDOR), sizeof( glConfig.vendor_string ) );
 Q_strncpyz( glConfig.renderer_string, qglGetString (GL_RENDERER), sizeof( glConfig.renderer_string ) );
 Q_strncpyz( glConfig.version_string, qglGetString (GL_VERSION), sizeof( glConfig.version_string ) );
 Q_strncpyz( glConfig.extensions_string, qglGetString (GL_EXTENSIONS), sizeof( glConfig.extensions_string ) );




 Q_strncpyz( buf, glConfig.renderer_string, sizeof(buf) );
 Q_strlwr( buf );






 if ( Q_stricmp( lastValidRenderer->string, glConfig.renderer_string ) )
 {
  glConfig.hardwareType = GLHW_GENERIC;

  ri.Cvar_Set( "r_textureMode", "GL_LINEAR_MIPMAP_NEAREST" );


  if ( strstr( buf, "voodoo graphics/1 tmu/2 mb" ) )
  {
   ri.Cvar_Set( "r_picmip", "2" );
   ri.Cvar_Get( "r_picmip", "1", CVAR_ARCHIVE | CVAR_LATCH );
  }
  else
  {
   ri.Cvar_Set( "r_picmip", "1" );

   if ( strstr( buf, "rage 128" ) || strstr( buf, "rage128" ) )
   {
    ri.Cvar_Set( "r_finish", "0" );
   }

   else if ( strstr( buf, "savage3d" ) || strstr( buf, "s3 savage4" ) )
   {
    ri.Cvar_Set( "r_texturemode", "GL_LINEAR_MIPMAP_LINEAR" );
   }
  }
 }





 if ( strstr( buf, "banshee" ) || strstr( buf, "voodoo3" ) )
 {
  glConfig.hardwareType = GLHW_3DFX_2D3D;
 }

 else if ( strstr( buf, "voodoo graphics/1 tmu/2 mb" ) )
 {
 }
 else if ( strstr( buf, "glzicd" ) )
 {
 }
 else if ( strstr( buf, "rage pro" ) || strstr( buf, "Rage Pro" ) || strstr( buf, "ragepro" ) )
 {
  glConfig.hardwareType = GLHW_RAGEPRO;
 }
 else if ( strstr( buf, "rage 128" ) )
 {
 }
 else if ( strstr( buf, "permedia2" ) )
 {
  glConfig.hardwareType = GLHW_PERMEDIA2;
 }
 else if ( strstr( buf, "riva 128" ) )
 {
  glConfig.hardwareType = GLHW_RIVA128;
 }
 else if ( strstr( buf, "riva tnt " ) )
 {
 }

 ri.Cvar_Set( "r_lastValidRenderer", glConfig.renderer_string );

 GLW_InitExtensions();
 WG_CheckHardwareGamma();
}
