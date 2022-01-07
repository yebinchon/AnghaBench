
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int integer; int string; } ;
typedef TYPE_1__ cvar_t ;
struct TYPE_5__ {scalar_t__ integer; } ;


 int CVAR_LATCH ;
 int Com_Printf (char*) ;
 TYPE_1__* Cvar_Get (char*,char*,int ) ;
 int Cvar_SetValue (char*,int) ;
 int NET_GetLocalAddress () ;
 scalar_t__ NET_IPSocket (int ,int) ;
 int NET_OpenSocks (int) ;
 int PORT_SERVER ;
 scalar_t__ ip_socket ;
 TYPE_2__* net_socksEnabled ;
 char* va (char*,int ) ;

void NET_OpenIP( void ) {
 cvar_t *ip;
 int port;
 int i;

 ip = Cvar_Get( "net_ip", "localhost", CVAR_LATCH );
 port = Cvar_Get( "net_port", va( "%i", PORT_SERVER ), CVAR_LATCH )->integer;




 for( i = 0 ; i < 10 ; i++ ) {
  ip_socket = NET_IPSocket( ip->string, port + i );
  if ( ip_socket ) {
   Cvar_SetValue( "net_port", port + i );
   if ( net_socksEnabled->integer ) {
    NET_OpenSocks( port + i );
   }
   NET_GetLocalAddress();
   return;
  }
 }
 Com_Printf( "WARNING: Couldn't allocate IP port\n");
}
