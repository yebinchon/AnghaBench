
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* pending; void* print; int address; } ;
typedef TYPE_1__ serverStatus_t ;
typedef int netadr_t ;
struct TYPE_7__ {scalar_t__ demoplaying; } ;
struct TYPE_6__ {scalar_t__ state; char* servername; } ;


 scalar_t__ CA_ACTIVE ;
 TYPE_1__* CL_GetServerStatus (int ) ;
 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Memset (int *,int ,int) ;
 int Com_Printf (char*) ;
 int NET_OutOfBandPrint (int ,int ,char*) ;
 int NET_StringToAdr (char*,int *) ;
 int NS_CLIENT ;
 TYPE_3__ clc ;
 TYPE_2__ cls ;
 void* qtrue ;

void CL_ServerStatus_f(void) {
 netadr_t to;
 char *server;
 serverStatus_t *serverStatus;

 Com_Memset( &to, 0, sizeof(netadr_t) );

 if ( Cmd_Argc() != 2 ) {
  if ( cls.state != CA_ACTIVE || clc.demoplaying ) {
   Com_Printf ("Not connected to a server.\n");
   Com_Printf( "Usage: serverstatus [server]\n");
   return;
  }
  server = cls.servername;
 }
 else {
  server = Cmd_Argv(1);
 }

 if ( !NET_StringToAdr( server, &to ) ) {
  return;
 }

 NET_OutOfBandPrint( NS_CLIENT, to, "getstatus" );

 serverStatus = CL_GetServerStatus( to );
 serverStatus->address = to;
 serverStatus->print = qtrue;
 serverStatus->pending = qtrue;
}
