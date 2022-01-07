
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ipx {scalar_t__ sa_socket; int sa_nodenum; int sa_netnum; int sa_family; } ;
typedef int address ;
typedef int _true ;
typedef int SOCKET ;


 int AF_IPX ;
 int Com_Printf (char*,int ) ;
 int FIONBIO ;
 int INVALID_SOCKET ;
 int NET_ErrorString () ;
 int NSPROTO_IPX ;
 int PORT_ANY ;
 scalar_t__ SOCKET_ERROR ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_BROADCAST ;
 int WSAEAFNOSUPPORT ;
 int WSAGetLastError () ;
 scalar_t__ bind (int,void*,int) ;
 int closesocket (int) ;
 scalar_t__ htons (short) ;
 scalar_t__ ioctlsocket (int,int ,int*) ;
 int memset (int ,int ,int) ;
 scalar_t__ setsockopt (int,int ,int ,char*,int) ;
 int socket (int ,int ,int ) ;

int NET_IPXSocket( int port ) {
 SOCKET newsocket;
 struct sockaddr_ipx address;
 int _true = 1;
 int err;

 if( ( newsocket = socket( AF_IPX, SOCK_DGRAM, NSPROTO_IPX ) ) == INVALID_SOCKET ) {
  err = WSAGetLastError();
  if (err != WSAEAFNOSUPPORT) {
   Com_Printf( "WARNING: IPX_Socket: socket: %s\n", NET_ErrorString() );
  }
  return 0;
 }


 if( ioctlsocket( newsocket, FIONBIO, &_true ) == SOCKET_ERROR ) {
  Com_Printf( "WARNING: IPX_Socket: ioctl FIONBIO: %s\n", NET_ErrorString() );
  return 0;
 }


 if( setsockopt( newsocket, SOL_SOCKET, SO_BROADCAST, (char *)&_true, sizeof( _true ) ) == SOCKET_ERROR ) {
  Com_Printf( "WARNING: IPX_Socket: setsockopt SO_BROADCAST: %s\n", NET_ErrorString() );
  return 0;
 }

 address.sa_family = AF_IPX;
 memset( address.sa_netnum, 0, 4 );
 memset( address.sa_nodenum, 0, 6 );
 if( port == PORT_ANY ) {
  address.sa_socket = 0;
 }
 else {
  address.sa_socket = htons( (short)port );
 }

 if( bind( newsocket, (void *)&address, sizeof(address) ) == SOCKET_ERROR ) {
  Com_Printf( "WARNING: IPX_Socket: bind: %s\n", NET_ErrorString() );
  closesocket( newsocket );
  return 0;
 }

 return newsocket;
}
