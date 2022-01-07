
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int adr; scalar_t__ time; int start; } ;
typedef TYPE_1__ ping_t ;
typedef int netadr_t ;
struct TYPE_5__ {int realtime; } ;


 TYPE_1__* CL_GetFreePing () ;
 int CL_SetServerInfoByAddress (int ,int *,int ) ;
 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Memset (int *,int ,int) ;
 int Com_Printf (char*) ;
 int NET_OutOfBandPrint (int ,int ,char*) ;
 int NET_StringToAdr (char*,int *) ;
 int NS_CLIENT ;
 TYPE_2__ cls ;
 int memcpy (int *,int *,int) ;

void CL_Ping_f( void ) {
 netadr_t to;
 ping_t* pingptr;
 char* server;

 if ( Cmd_Argc() != 2 ) {
  Com_Printf( "usage: ping [server]\n");
  return;
 }

 Com_Memset( &to, 0, sizeof(netadr_t) );

 server = Cmd_Argv(1);

 if ( !NET_StringToAdr( server, &to ) ) {
  return;
 }

 pingptr = CL_GetFreePing();

 memcpy( &pingptr->adr, &to, sizeof (netadr_t) );
 pingptr->start = cls.realtime;
 pingptr->time = 0;

 CL_SetServerInfoByAddress(pingptr->adr, ((void*)0), 0);

 NET_OutOfBandPrint( NS_CLIENT, to, "getinfo xxx" );
}
