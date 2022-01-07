
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int integer; } ;


 int CVAR_LATCH ;
 TYPE_1__* Cvar_Get (char*,int ,int ) ;
 int NET_IPXSocket (int) ;
 int PORT_SERVER ;
 int ipx_socket ;
 int va (char*,int ) ;

void NET_OpenIPX( void ) {
 int port;

 port = Cvar_Get( "net_port", va( "%i", PORT_SERVER ), CVAR_LATCH )->integer;
 ipx_socket = NET_IPXSocket( port );
}
