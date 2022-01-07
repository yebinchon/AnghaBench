
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


struct TYPE_12__ {scalar_t__ driverType; int stereoEnabled; } ;
struct TYPE_11__ {int hDC; } ;
struct TYPE_10__ {int string; } ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {int integer; scalar_t__ modified; } ;
struct TYPE_7__ {int (* Error ) (int ,char*) ;} ;


 int ERR_FATAL ;
 scalar_t__ GLDRV_ICD ;
 int QGL_EnableLogging (int ) ;
 scalar_t__ Q_stricmp (int ,char*) ;
 int SwapBuffers (int ) ;
 TYPE_6__ glConfig ;
 TYPE_5__ glw_state ;
 scalar_t__ qfalse ;
 int qwglSwapBuffers (int ) ;
 int qwglSwapIntervalEXT (int ) ;
 TYPE_4__* r_drawBuffer ;
 TYPE_3__* r_logFile ;
 TYPE_2__* r_swapInterval ;
 TYPE_1__ ri ;
 int stub1 (int ,char*) ;

void GLimp_EndFrame (void)
{



 if ( r_swapInterval->modified ) {
  r_swapInterval->modified = qfalse;

  if ( !glConfig.stereoEnabled ) {
   if ( qwglSwapIntervalEXT ) {
    qwglSwapIntervalEXT( r_swapInterval->integer );
   }
  }
 }



 if ( Q_stricmp( r_drawBuffer->string, "GL_FRONT" ) != 0 )
 {
  if ( glConfig.driverType > GLDRV_ICD )
  {
   if ( !qwglSwapBuffers( glw_state.hDC ) )
   {
    ri.Error( ERR_FATAL, "GLimp_EndFrame() - SwapBuffers() failed!\n" );
   }
  }
  else
  {
   SwapBuffers( glw_state.hDC );
  }
 }


 QGL_EnableLogging( r_logFile->integer );
}
