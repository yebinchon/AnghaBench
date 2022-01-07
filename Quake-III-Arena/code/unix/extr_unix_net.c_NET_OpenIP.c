
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; int string; } ;
typedef TYPE_1__ cvar_t ;


 int Com_Error (int ,char*) ;
 TYPE_1__* Cvar_Get (char*,char*,int ) ;
 int Cvar_SetValue (char*,int) ;
 int ERR_FATAL ;
 int NET_GetLocalAddress () ;
 scalar_t__ NET_IPSocket (int ,int) ;
 int PORT_SERVER ;
 scalar_t__ ip_socket ;
 char* va (char*,int ) ;

void NET_OpenIP (void)
{
 cvar_t *ip;
 int port;
 int i;

 ip = Cvar_Get ("net_ip", "localhost", 0);

 port = Cvar_Get("net_port", va("%i", PORT_SERVER), 0)->value;

 for ( i = 0 ; i < 10 ; i++ ) {
  ip_socket = NET_IPSocket (ip->string, port + i);
  if ( ip_socket ) {
   Cvar_SetValue( "net_port", port + i );
   NET_GetLocalAddress();
   return;
  }
 }
 Com_Error (ERR_FATAL, "Couldn't allocate IP port");
}
