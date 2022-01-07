
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_20__ {scalar_t__ integer; } ;
struct TYPE_19__ {scalar_t__ integer; } ;
struct TYPE_18__ {int integer; } ;
struct TYPE_17__ {scalar_t__ integer; } ;
struct TYPE_16__ {int timeDemoFrames; int timeDemoBaseTime; scalar_t__ timeDemoStart; scalar_t__ demoplaying; void* firstDemoFrameSkipped; } ;
struct TYPE_15__ {scalar_t__ state; int realtime; } ;
struct TYPE_14__ {scalar_t__ integer; } ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {int serverTime; int valid; } ;
struct TYPE_11__ {int oldFrameServerTime; int serverTime; int serverTimeDelta; int oldServerTime; TYPE_1__ snap; scalar_t__ newSnapshots; void* extrapolatedSnapshot; } ;


 scalar_t__ CA_ACTIVE ;
 scalar_t__ CA_PRIMED ;
 int CL_AdjustTimeDelta () ;
 int CL_FirstSnapshot () ;
 int CL_ReadDemoMessage () ;
 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 scalar_t__ Sys_Milliseconds () ;
 TYPE_10__ cl ;
 TYPE_9__* cl_freezeDemo ;
 TYPE_8__* cl_paused ;
 TYPE_7__* cl_timeNudge ;
 TYPE_6__* cl_timedemo ;
 TYPE_5__ clc ;
 TYPE_4__ cls ;
 TYPE_3__* com_sv_running ;
 scalar_t__ qfalse ;
 void* qtrue ;
 TYPE_2__* sv_paused ;

void CL_SetCGameTime( void ) {

 if ( cls.state != CA_ACTIVE ) {
  if ( cls.state != CA_PRIMED ) {
   return;
  }
  if ( clc.demoplaying ) {


   if ( !clc.firstDemoFrameSkipped ) {
    clc.firstDemoFrameSkipped = qtrue;
    return;
   }
   CL_ReadDemoMessage();
  }
  if ( cl.newSnapshots ) {
   cl.newSnapshots = qfalse;
   CL_FirstSnapshot();
  }
  if ( cls.state != CA_ACTIVE ) {
   return;
  }
 }


 if ( !cl.snap.valid ) {
  Com_Error( ERR_DROP, "CL_SetCGameTime: !cl.snap.valid" );
 }


 if ( sv_paused->integer && cl_paused->integer && com_sv_running->integer ) {

  return;
 }

 if ( cl.snap.serverTime < cl.oldFrameServerTime ) {
  Com_Error( ERR_DROP, "cl.snap.serverTime < cl.oldFrameServerTime" );
 }
 cl.oldFrameServerTime = cl.snap.serverTime;




 if ( clc.demoplaying && cl_freezeDemo->integer ) {


 } else {



  int tn;

  tn = cl_timeNudge->integer;
  if (tn<-30) {
   tn = -30;
  } else if (tn>30) {
   tn = 30;
  }

  cl.serverTime = cls.realtime + cl.serverTimeDelta - tn;



  if ( cl.serverTime < cl.oldServerTime ) {
   cl.serverTime = cl.oldServerTime;
  }
  cl.oldServerTime = cl.serverTime;



  if ( cls.realtime + cl.serverTimeDelta >= cl.snap.serverTime - 5 ) {
   cl.extrapolatedSnapshot = qtrue;
  }
 }




 if ( cl.newSnapshots ) {
  CL_AdjustTimeDelta();
 }

 if ( !clc.demoplaying ) {
  return;
 }
 if ( cl_timedemo->integer ) {
  if (!clc.timeDemoStart) {
   clc.timeDemoStart = Sys_Milliseconds();
  }
  clc.timeDemoFrames++;
  cl.serverTime = clc.timeDemoBaseTime + clc.timeDemoFrames * 50;
 }

 while ( cl.serverTime >= cl.snap.serverTime ) {


  CL_ReadDemoMessage();
  if ( cls.state != CA_ACTIVE ) {
   return;
  }
 }

}
