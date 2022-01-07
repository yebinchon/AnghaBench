
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ evPtr; } ;
typedef TYPE_1__ sysEvent_t ;


 int Com_Printf (char*) ;
 int MAX_PUSHED_EVENTS ;
 int Z_Free (scalar_t__) ;
 TYPE_1__* com_pushedEvents ;
 int com_pushedEventsHead ;
 int com_pushedEventsTail ;
 int qfalse ;
 int qtrue ;

void Com_PushEvent( sysEvent_t *event ) {
 sysEvent_t *ev;
 static int printedWarning = 0;

 ev = &com_pushedEvents[ com_pushedEventsHead & (MAX_PUSHED_EVENTS-1) ];

 if ( com_pushedEventsHead - com_pushedEventsTail >= MAX_PUSHED_EVENTS ) {


  if ( !printedWarning ) {
   printedWarning = qtrue;
   Com_Printf( "WARNING: Com_PushEvent overflow\n" );
  }

  if ( ev->evPtr ) {
   Z_Free( ev->evPtr );
  }
  com_pushedEventsTail++;
 } else {
  printedWarning = qfalse;
 }

 *ev = *event;
 com_pushedEventsHead++;
}
