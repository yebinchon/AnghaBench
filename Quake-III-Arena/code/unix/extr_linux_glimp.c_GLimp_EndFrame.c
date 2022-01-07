
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int string; } ;
struct TYPE_3__ {scalar_t__ integer; } ;


 int QGL_EnableLogging (int ) ;
 int dpy ;
 int qglXSwapBuffers (int ,int ) ;
 TYPE_2__* r_drawBuffer ;
 TYPE_1__* r_logFile ;
 scalar_t__ stricmp (int ,char*) ;
 int win ;

void GLimp_EndFrame (void)
{

  if ( stricmp( r_drawBuffer->string, "GL_FRONT" ) != 0 )
  {
    qglXSwapBuffers(dpy, win);
  }


  QGL_EnableLogging( (qboolean)r_logFile->integer );
}
