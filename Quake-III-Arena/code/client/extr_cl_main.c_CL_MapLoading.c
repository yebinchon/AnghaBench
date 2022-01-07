
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int gameState; } ;
struct TYPE_7__ {int lastPacketSentTime; int serverAddress; int connectTime; int * serverMessage; } ;
struct TYPE_6__ {scalar_t__ state; int servername; scalar_t__ keyCatchers; int * updateInfoString; } ;
struct TYPE_5__ {int integer; } ;


 scalar_t__ CA_CHALLENGING ;
 scalar_t__ CA_CONNECTED ;
 int CL_CheckForResend () ;
 int CL_Disconnect (int ) ;
 int Com_Memset (int *,int ,int) ;
 int Con_Close () ;
 int Cvar_Set (char*,char*) ;
 int NET_StringToAdr (int ,int *) ;
 int Q_stricmp (int ,char*) ;
 int Q_strncpyz (int ,char*,int) ;
 int RETRANSMIT_TIMEOUT ;
 int SCR_UpdateScreen () ;
 TYPE_4__ cl ;
 TYPE_3__ clc ;
 TYPE_2__ cls ;
 TYPE_1__* com_cl_running ;
 int qtrue ;

void CL_MapLoading( void ) {
 if ( !com_cl_running->integer ) {
  return;
 }

 Con_Close();
 cls.keyCatchers = 0;


 if ( cls.state >= CA_CONNECTED && !Q_stricmp( cls.servername, "localhost" ) ) {
  cls.state = CA_CONNECTED;
  Com_Memset( cls.updateInfoString, 0, sizeof( cls.updateInfoString ) );
  Com_Memset( clc.serverMessage, 0, sizeof( clc.serverMessage ) );
  Com_Memset( &cl.gameState, 0, sizeof( cl.gameState ) );
  clc.lastPacketSentTime = -9999;
  SCR_UpdateScreen();
 } else {

  Cvar_Set( "nextmap", "" );
  CL_Disconnect( qtrue );
  Q_strncpyz( cls.servername, "localhost", sizeof(cls.servername) );
  cls.state = CA_CHALLENGING;
  cls.keyCatchers = 0;
  SCR_UpdateScreen();
  clc.connectTime = -RETRANSMIT_TIMEOUT;
  NET_StringToAdr( cls.servername, &clc.serverAddress);


  CL_CheckForResend();
 }
}
