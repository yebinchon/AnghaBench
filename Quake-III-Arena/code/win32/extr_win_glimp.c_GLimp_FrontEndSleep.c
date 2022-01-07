
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hGLRC; int hDC; } ;


 int INFINITE ;
 int WaitForSingleObject (int ,int ) ;
 TYPE_1__ glw_state ;
 int qwglMakeCurrent (int ,int ) ;
 int renderCompletedEvent ;
 int wglErrors ;

void GLimp_FrontEndSleep( void ) {
 WaitForSingleObject( renderCompletedEvent, INFINITE );

 if ( !qwglMakeCurrent( glw_state.hDC, glw_state.hGLRC ) ) {
  wglErrors++;
 }
}
