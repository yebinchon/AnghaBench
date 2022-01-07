
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hDC; } ;


 int INFINITE ;
 int SetEvent (int ) ;
 int WaitForSingleObject (int ,int ) ;
 TYPE_1__ glw_state ;
 int qwglMakeCurrent (int ,int *) ;
 int renderActiveEvent ;
 int renderCommandsEvent ;
 void* smpData ;
 int wglErrors ;

void GLimp_WakeRenderer( void *data ) {
 smpData = data;

 if ( !qwglMakeCurrent( glw_state.hDC, ((void*)0) ) ) {
  wglErrors++;
 }


 SetEvent( renderCommandsEvent );

 WaitForSingleObject( renderActiveEvent, INFINITE );
}
