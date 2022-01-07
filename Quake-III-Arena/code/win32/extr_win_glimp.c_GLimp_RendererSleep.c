
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * hGLRC; int hDC; } ;


 int INFINITE ;
 int ResetEvent (int ) ;
 int SetEvent (int ) ;
 int WaitForSingleObject (int ,int ) ;
 TYPE_1__ glw_state ;
 int qwglMakeCurrent (int ,int *) ;
 int renderActiveEvent ;
 int renderCommandsEvent ;
 int renderCompletedEvent ;
 void* smpData ;
 int wglErrors ;

void *GLimp_RendererSleep( void ) {
 void *data;

 if ( !qwglMakeCurrent( glw_state.hDC, ((void*)0) ) ) {
  wglErrors++;
 }

 ResetEvent( renderActiveEvent );


 SetEvent( renderCompletedEvent );

 WaitForSingleObject( renderCommandsEvent, INFINITE );

 if ( !qwglMakeCurrent( glw_state.hDC, glw_state.hGLRC ) ) {
  wglErrors++;
 }

 ResetEvent( renderCompletedEvent );
 ResetEvent( renderCommandsEvent );

 data = smpData;


 SetEvent( renderActiveEvent );

 return data;
}
