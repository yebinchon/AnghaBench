
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int info ;
struct TYPE_4__ {scalar_t__ connectTime; int challenge; int serverAddress; int connectPacketCount; scalar_t__ demoplaying; } ;
struct TYPE_3__ {int state; scalar_t__ realtime; } ;




 int CL_RequestAuthorization () ;
 int CVAR_USERINFO ;
 int Com_Error (int ,char*) ;
 int Cvar_InfoString (int ) ;
 int Cvar_VariableValue (char*) ;
 int ERR_FATAL ;
 int Info_SetValueForKey (char*,char*,int ) ;
 int MAX_INFO_STRING ;
 int NET_OutOfBandData (int ,int ,char*,int) ;
 int NET_OutOfBandPrint (int ,int ,char*) ;
 int NS_CLIENT ;
 int PROTOCOL_VERSION ;
 int Q_strncpyz (char*,int ,int) ;
 scalar_t__ RETRANSMIT_TIMEOUT ;
 int Sys_IsLANAddress (int ) ;
 TYPE_2__ clc ;
 TYPE_1__ cls ;
 int cvar_modifiedFlags ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int va (char*,int) ;

void CL_CheckForResend( void ) {
 int port, i;
 char info[MAX_INFO_STRING];
 char data[MAX_INFO_STRING];


 if ( clc.demoplaying ) {
  return;
 }


 if ( cls.state != 128 && cls.state != 129 ) {
  return;
 }

 if ( cls.realtime - clc.connectTime < RETRANSMIT_TIMEOUT ) {
  return;
 }

 clc.connectTime = cls.realtime;
 clc.connectPacketCount++;


 switch ( cls.state ) {
 case 128:

  if ( !Sys_IsLANAddress( clc.serverAddress ) ) {
   CL_RequestAuthorization();
  }
  NET_OutOfBandPrint(NS_CLIENT, clc.serverAddress, "getchallenge");
  break;

 case 129:

  port = Cvar_VariableValue ("net_qport");

  Q_strncpyz( info, Cvar_InfoString( CVAR_USERINFO ), sizeof( info ) );
  Info_SetValueForKey( info, "protocol", va("%i", PROTOCOL_VERSION ) );
  Info_SetValueForKey( info, "qport", va("%i", port ) );
  Info_SetValueForKey( info, "challenge", va("%i", clc.challenge ) );

  strcpy(data, "connect ");


    data[8] = '"';

  for(i=0;i<strlen(info);i++) {
   data[9+i] = info[i];
  }
    data[9+i] = '"';
  data[10+i] = 0;


  NET_OutOfBandData( NS_CLIENT, clc.serverAddress, &data[0], i+10 );


  cvar_modifiedFlags &= ~CVAR_USERINFO;
  break;

 default:
  Com_Error( ERR_FATAL, "CL_CheckForResend: bad cls.state" );
 }
}
