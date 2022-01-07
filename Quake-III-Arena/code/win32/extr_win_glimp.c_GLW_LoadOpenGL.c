
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef int buffer ;
struct TYPE_12__ {scalar_t__ driverType; scalar_t__ isFullscreen; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {int (* Printf ) (int ,char*,char const*) ;} ;


 scalar_t__ GLDRV_ICD ;
 scalar_t__ GLDRV_STANDALONE ;
 scalar_t__ GLDRV_VOODOO ;
 int GLW_StartDriverAndSetMode (char const*,int,int,scalar_t__) ;
 int PRINT_ALL ;
 scalar_t__ QGL_Init (char*) ;
 int QGL_Shutdown () ;
 int Q_strlwr (char*) ;
 int Q_strncpyz (char*,char const*,int) ;
 char* _3DFX_DRIVER_NAME ;
 int _putenv (char*) ;
 TYPE_6__ glConfig ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 TYPE_5__* r_colorbits ;
 TYPE_4__* r_fullscreen ;
 TYPE_3__* r_maskMinidriver ;
 TYPE_2__* r_mode ;
 TYPE_1__ ri ;
 scalar_t__ strstr (char*,char*) ;
 int stub1 (int ,char*,char const*) ;

__attribute__((used)) static qboolean GLW_LoadOpenGL( const char *drivername )
{
 char buffer[1024];
 qboolean cdsFullscreen;

 Q_strncpyz( buffer, drivername, sizeof(buffer) );
 Q_strlwr(buffer);




 if ( strstr( buffer, "opengl32" ) != 0 || r_maskMinidriver->integer )
 {
  glConfig.driverType = GLDRV_ICD;
 }
 else
 {
  glConfig.driverType = GLDRV_STANDALONE;

  ri.Printf( PRINT_ALL, "...assuming '%s' is a standalone driver\n", drivername );

  if ( strstr( buffer, _3DFX_DRIVER_NAME ) )
  {
   glConfig.driverType = GLDRV_VOODOO;
  }
 }


 _putenv("FX_GLIDE_NO_SPLASH=0");




 if ( QGL_Init( buffer ) )
 {
  cdsFullscreen = r_fullscreen->integer;


  if ( !GLW_StartDriverAndSetMode( drivername, r_mode->integer, r_colorbits->integer, cdsFullscreen ) )
  {


   if ( glConfig.driverType == GLDRV_ICD )
   {
    if ( r_colorbits->integer != 16 ||
      cdsFullscreen != qtrue ||
      r_mode->integer != 3 )
    {
     if ( !GLW_StartDriverAndSetMode( drivername, 3, 16, qtrue ) )
     {
      goto fail;
     }
    }
   }
   else
   {
    goto fail;
   }
  }

  if ( glConfig.driverType == GLDRV_VOODOO )
  {
   glConfig.isFullscreen = qtrue;
  }

  return qtrue;
 }
fail:

 QGL_Shutdown();

 return qfalse;
}
