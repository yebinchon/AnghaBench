
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int netadr_t ;
struct TYPE_4__ {int remoteAddress; } ;
struct TYPE_6__ {int lastPacketTime; TYPE_1__ netchan; } ;
struct TYPE_5__ {scalar_t__ state; int realtime; } ;


 scalar_t__ CA_AUTHORIZING ;
 int CL_Disconnect (int ) ;
 int Com_Printf (char*) ;
 int Cvar_Set (char*,char*) ;
 int NET_CompareAdr (int ,int ) ;
 TYPE_3__ clc ;
 TYPE_2__ cls ;
 int qtrue ;

void CL_DisconnectPacket( netadr_t from ) {
 if ( cls.state < CA_AUTHORIZING ) {
  return;
 }


 if ( !NET_CompareAdr( from, clc.netchan.remoteAddress ) ) {
  return;
 }



 if ( cls.realtime - clc.lastPacketTime < 3000 ) {
  return;
 }


 Com_Printf( "Server disconnected for unknown reason\n" );
 Cvar_Set("com_errorMessage", "Server disconnected for unknown reason\n" );
 CL_Disconnect( qtrue );
}
