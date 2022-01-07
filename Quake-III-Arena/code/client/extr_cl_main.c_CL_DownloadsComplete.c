
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int checksumFeed; scalar_t__ downloadRestart; } ;
struct TYPE_3__ {scalar_t__ state; int cgameStarted; } ;


 scalar_t__ CA_LOADING ;
 int CL_AddReliableCommand (char*) ;
 int CL_FlushMemory () ;
 int CL_InitCGame () ;
 int CL_SendPureChecksums () ;
 int CL_WritePacket () ;
 int Com_EventLoop () ;
 int Cvar_Set (char*,char*) ;
 int FS_Restart (int ) ;
 TYPE_2__ clc ;
 TYPE_1__ cls ;
 scalar_t__ qfalse ;
 int qtrue ;

void CL_DownloadsComplete( void ) {


 if (clc.downloadRestart) {
  clc.downloadRestart = qfalse;

  FS_Restart(clc.checksumFeed);


  CL_AddReliableCommand( "donedl" );



  return;
 }


 cls.state = CA_LOADING;


 Com_EventLoop();



 if ( cls.state != CA_LOADING ) {
  return;
 }


 Cvar_Set("r_uiFullScreen", "0");





 CL_FlushMemory();


 cls.cgameStarted = qtrue;
 CL_InitCGame();


 CL_SendPureChecksums();

 CL_WritePacket();
 CL_WritePacket();
 CL_WritePacket();
}
