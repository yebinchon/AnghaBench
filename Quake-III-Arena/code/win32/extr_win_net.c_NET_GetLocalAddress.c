
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {char** h_aliases; scalar_t__ h_addrtype; char** h_addr_list; int h_name; } ;


 scalar_t__ AF_INET ;
 int Com_Printf (char*,...) ;
 size_t MAX_IPS ;
 scalar_t__ SOCKET_ERROR ;
 int WSAGetLastError () ;
 struct hostent* gethostbyname (char*) ;
 scalar_t__ gethostname (char*,int) ;
 char** localIP ;
 int ntohl (int) ;
 size_t numIP ;

void NET_GetLocalAddress( void ) {
 char hostname[256];
 struct hostent *hostInfo;
 int error;
 char *p;
 int ip;
 int n;

 if( gethostname( hostname, 256 ) == SOCKET_ERROR ) {
  error = WSAGetLastError();
  return;
 }

 hostInfo = gethostbyname( hostname );
 if( !hostInfo ) {
  error = WSAGetLastError();
  return;
 }

 Com_Printf( "Hostname: %s\n", hostInfo->h_name );
 n = 0;
 while( ( p = hostInfo->h_aliases[n++] ) != ((void*)0) ) {
  Com_Printf( "Alias: %s\n", p );
 }

 if ( hostInfo->h_addrtype != AF_INET ) {
  return;
 }

 numIP = 0;
 while( ( p = hostInfo->h_addr_list[numIP] ) != ((void*)0) && numIP < MAX_IPS ) {
  ip = ntohl( *(int *)p );
  localIP[ numIP ][0] = p[0];
  localIP[ numIP ][1] = p[1];
  localIP[ numIP ][2] = p[2];
  localIP[ numIP ][3] = p[3];
  Com_Printf( "IP: %i.%i.%i.%i\n", ( ip >> 24 ) & 0xff, ( ip >> 16 ) & 0xff, ( ip >> 8 ) & 0xff, ip & 0xff );
  numIP++;
 }
}
