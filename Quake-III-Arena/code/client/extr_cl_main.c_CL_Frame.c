
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {int integer; } ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {scalar_t__ state; int keyCatchers; int realFrametime; int frametime; int realtime; int framecount; scalar_t__ cddialog; } ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {int value; } ;


 scalar_t__ CA_ACTIVE ;
 scalar_t__ CA_DISCONNECTED ;
 int CL_CheckForResend () ;
 int CL_CheckTimeout () ;
 int CL_CheckUserinfo () ;
 int CL_SendCmd () ;
 int CL_SetCGameTime () ;
 int Cbuf_ExecuteText (int ,char*) ;
 int Con_RunConsole () ;
 int EXEC_NOW ;
 int KEYCATCH_UI ;
 int SCR_DebugGraph (double,int ) ;
 int SCR_RunCinematic () ;
 int SCR_UpdateScreen () ;
 int S_StopAllSounds () ;
 int S_Update () ;
 int UIMENU_MAIN ;
 int UIMENU_NEED_CD ;
 int UI_SET_ACTIVE_MENU ;
 int VM_Call (int ,int ,int ) ;
 TYPE_7__* cl_avidemo ;
 TYPE_6__* cl_forceavidemo ;
 TYPE_5__* cl_timegraph ;
 TYPE_4__ cls ;
 TYPE_3__* com_cl_running ;
 TYPE_2__* com_sv_running ;
 TYPE_1__* com_timescale ;
 scalar_t__ qfalse ;
 int uivm ;

void CL_Frame ( int msec ) {

 if ( !com_cl_running->integer ) {
  return;
 }

 if ( cls.cddialog ) {

  cls.cddialog = qfalse;
  VM_Call( uivm, UI_SET_ACTIVE_MENU, UIMENU_NEED_CD );
 } else if ( cls.state == CA_DISCONNECTED && !( cls.keyCatchers & KEYCATCH_UI )
  && !com_sv_running->integer ) {

  S_StopAllSounds();
  VM_Call( uivm, UI_SET_ACTIVE_MENU, UIMENU_MAIN );
 }


 if ( cl_avidemo->integer && msec) {

  if ( cls.state == CA_ACTIVE || cl_forceavidemo->integer) {
   Cbuf_ExecuteText( EXEC_NOW, "screenshot silent\n" );
  }

  msec = (1000 / cl_avidemo->integer) * com_timescale->value;
  if (msec == 0) {
   msec = 1;
  }
 }


 cls.realFrametime = msec;


 cls.frametime = msec;

 cls.realtime += cls.frametime;

 if ( cl_timegraph->integer ) {
  SCR_DebugGraph ( cls.realFrametime * 0.25, 0 );
 }


 CL_CheckUserinfo();



 CL_CheckTimeout();


 CL_SendCmd();


 CL_CheckForResend();


 CL_SetCGameTime();


 SCR_UpdateScreen();


 S_Update();


 SCR_RunCinematic();

 Con_RunConsole();

 cls.framecount++;
}
