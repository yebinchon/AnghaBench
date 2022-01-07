
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* qboolean ;
struct TYPE_4__ {void* modified; int string; } ;
struct TYPE_3__ {int (* Error ) (int ,char*) ;int (* Cvar_Set ) (char*,int ) ;} ;


 int ERR_FATAL ;
 scalar_t__ GLW_LoadOpenGL (int ) ;
 int OPENGL_DRIVER_NAME ;
 int Q_stricmp (int ,int ) ;
 int _3DFX_DRIVER_NAME ;
 void* qfalse ;
 void* qtrue ;
 TYPE_2__* r_glDriver ;
 TYPE_1__ ri ;
 int stub1 (char*,int ) ;
 int stub2 (int ,char*) ;
 int stub3 (char*,int ) ;
 int stub4 (int ,char*) ;
 int stub5 (char*,int ) ;
 int stub6 (int ,char*) ;

__attribute__((used)) static void GLW_StartOpenGL( void )
{
 qboolean attemptedOpenGL32 = qfalse;
 qboolean attempted3Dfx = qfalse;




 if ( !GLW_LoadOpenGL( r_glDriver->string ) )
 {
  if ( !Q_stricmp( r_glDriver->string, OPENGL_DRIVER_NAME ) )
  {
   attemptedOpenGL32 = qtrue;
  }
  else if ( !Q_stricmp( r_glDriver->string, _3DFX_DRIVER_NAME ) )
  {
   attempted3Dfx = qtrue;
  }

  if ( !attempted3Dfx )
  {
   attempted3Dfx = qtrue;
   if ( GLW_LoadOpenGL( _3DFX_DRIVER_NAME ) )
   {
    ri.Cvar_Set( "r_glDriver", _3DFX_DRIVER_NAME );
    r_glDriver->modified = qfalse;
   }
   else
   {
    if ( !attemptedOpenGL32 )
    {
     if ( !GLW_LoadOpenGL( OPENGL_DRIVER_NAME ) )
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
   if ( GLW_LoadOpenGL( OPENGL_DRIVER_NAME ) )
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
