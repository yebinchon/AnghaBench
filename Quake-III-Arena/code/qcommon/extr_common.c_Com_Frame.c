
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


struct TYPE_12__ {int integer; void* modified; int value; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {int integer; void* modified; } ;


 int CL_Frame (int) ;
 int CL_Init () ;
 int CL_Shutdown () ;
 int Cbuf_Execute () ;
 int Com_EventLoop () ;
 int Com_ModifyMsec (int) ;
 int Com_Printf (char*,int,int,int,int,...) ;
 int Com_WriteConfiguration () ;
 int Cvar_Get (char*,char*,int ) ;
 int SV_Frame (int) ;
 int Sys_Milliseconds () ;
 int Sys_ShowConsole (int,void*) ;
 int abortframe ;
 TYPE_6__* com_dedicated ;
 int com_frameMsec ;
 int com_frameNumber ;
 int com_frameTime ;
 TYPE_5__* com_maxfps ;
 TYPE_4__* com_showtrace ;
 TYPE_3__* com_speeds ;
 TYPE_2__* com_timedemo ;
 TYPE_1__* com_viewlog ;
 void* qfalse ;
 void* qtrue ;
 scalar_t__ setjmp (int ) ;
 scalar_t__ time_backend ;
 scalar_t__ time_frontend ;
 scalar_t__ time_game ;

void Com_Frame( void ) {

 int msec, minMsec;
 static int lastTime;
 int key;

 int timeBeforeFirstEvents;
 int timeBeforeServer;
 int timeBeforeEvents;
 int timeBeforeClient;
 int timeAfter;





 if ( setjmp (abortframe) ) {
  return;
 }



 timeBeforeFirstEvents =0;
 timeBeforeServer =0;
 timeBeforeEvents =0;
 timeBeforeClient = 0;
 timeAfter = 0;



 key = 0x87243987;


 Com_WriteConfiguration();


 if ( com_viewlog->modified ) {
  if ( !com_dedicated->value ) {
   Sys_ShowConsole( com_viewlog->integer, qfalse );
  }
  com_viewlog->modified = qfalse;
 }




 if ( com_speeds->integer ) {
  timeBeforeFirstEvents = Sys_Milliseconds ();
 }


 if ( !com_dedicated->integer && com_maxfps->integer > 0 && !com_timedemo->integer ) {
  minMsec = 1000 / com_maxfps->integer;
 } else {
  minMsec = 1;
 }
 do {
  com_frameTime = Com_EventLoop();
  if ( lastTime > com_frameTime ) {
   lastTime = com_frameTime;
  }
  msec = com_frameTime - lastTime;
 } while ( msec < minMsec );
 Cbuf_Execute ();

 lastTime = com_frameTime;


 com_frameMsec = msec;
 msec = Com_ModifyMsec( msec );




 if ( com_speeds->integer ) {
  timeBeforeServer = Sys_Milliseconds ();
 }

 SV_Frame( msec );





 if ( com_dedicated->modified ) {

  Cvar_Get( "dedicated", "0", 0 );
  com_dedicated->modified = qfalse;
  if ( !com_dedicated->integer ) {
   CL_Init();
   Sys_ShowConsole( com_viewlog->integer, qfalse );
  } else {
   CL_Shutdown();
   Sys_ShowConsole( 1, qtrue );
  }
 }




 if ( !com_dedicated->integer ) {




  if ( com_speeds->integer ) {
   timeBeforeEvents = Sys_Milliseconds ();
  }
  Com_EventLoop();
  Cbuf_Execute ();





  if ( com_speeds->integer ) {
   timeBeforeClient = Sys_Milliseconds ();
  }

  CL_Frame( msec );

  if ( com_speeds->integer ) {
   timeAfter = Sys_Milliseconds ();
  }
 }




 if ( com_speeds->integer ) {
  int all, sv, ev, cl;

  all = timeAfter - timeBeforeServer;
  sv = timeBeforeEvents - timeBeforeServer;
  ev = timeBeforeServer - timeBeforeFirstEvents + timeBeforeClient - timeBeforeEvents;
  cl = timeAfter - timeBeforeClient;
  sv -= time_game;
  cl -= time_frontend + time_backend;

  Com_Printf ("frame:%i all:%3i sv:%3i ev:%3i cl:%3i gm:%3i rf:%3i bk:%3i\n",
      com_frameNumber, all, sv, ev, cl, time_game, time_frontend, time_backend );
 }




 if ( com_showtrace->integer ) {

  extern int c_traces, c_brush_traces, c_patch_traces;
  extern int c_pointcontents;

  Com_Printf ("%4i traces  (%ib %ip) %4i points\n", c_traces,
   c_brush_traces, c_patch_traces, c_pointcontents);
  c_traces = 0;
  c_brush_traces = 0;
  c_patch_traces = 0;
  c_pointcontents = 0;
 }


 key = lastTime * 0x87243987;

 com_frameNumber++;
}
