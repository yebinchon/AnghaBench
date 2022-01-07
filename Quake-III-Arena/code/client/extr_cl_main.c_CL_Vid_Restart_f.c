
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int checksumFeed; } ;
struct TYPE_5__ {scalar_t__ state; void* cgameStarted; void* soundRegistered; void* uiStarted; void* rendererStarted; } ;
struct TYPE_4__ {int integer; } ;


 scalar_t__ CA_CINEMATIC ;
 scalar_t__ CA_CONNECTED ;
 int CL_InitCGame () ;
 int CL_InitRef () ;
 int CL_ResetPureClientAtServer () ;
 int CL_SendPureChecksums () ;
 int CL_ShutdownCGame () ;
 int CL_ShutdownRef () ;
 int CL_ShutdownUI () ;
 int CL_StartHunkUsers () ;
 int Cvar_Set (char*,char*) ;
 int FS_CGAME_REF ;
 int FS_ClearPakReferences (int) ;
 int FS_ConditionalRestart (int ) ;
 int FS_UI_REF ;
 int Hunk_Clear () ;
 int Hunk_ClearToMark () ;
 int S_StopAllSounds () ;
 TYPE_3__ clc ;
 TYPE_2__ cls ;
 TYPE_1__* com_sv_running ;
 void* qfalse ;
 void* qtrue ;

void CL_Vid_Restart_f( void ) {


 S_StopAllSounds();

 CL_ShutdownUI();

 CL_ShutdownCGame();

 CL_ShutdownRef();

 CL_ResetPureClientAtServer();

 FS_ClearPakReferences( FS_UI_REF | FS_CGAME_REF );

 FS_ConditionalRestart( clc.checksumFeed );

 cls.rendererStarted = qfalse;
 cls.uiStarted = qfalse;
 cls.cgameStarted = qfalse;
 cls.soundRegistered = qfalse;


 Cvar_Set( "cl_paused", "0" );


 if ( !com_sv_running->integer ) {

  Hunk_Clear();
 }
 else {

  Hunk_ClearToMark();
 }


 CL_InitRef();


 CL_StartHunkUsers();


 if ( cls.state > CA_CONNECTED && cls.state != CA_CINEMATIC ) {
  cls.cgameStarted = qtrue;
  CL_InitCGame();

  CL_SendPureChecksums();
 }
}
