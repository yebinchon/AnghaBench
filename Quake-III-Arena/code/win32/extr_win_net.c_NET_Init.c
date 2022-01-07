
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Printf (char*,...) ;
 int MAKEWORD (int,int) ;
 int NET_Config (int ) ;
 int NET_GetCvars () ;
 int WSAStartup (int ,int *) ;
 int qtrue ;
 int winsockInitialized ;
 int winsockdata ;

void NET_Init( void ) {
 int r;

 r = WSAStartup( MAKEWORD( 1, 1 ), &winsockdata );
 if( r ) {
  Com_Printf( "WARNING: Winsock initialization failed, returned %d\n", r );
  return;
 }

 winsockInitialized = qtrue;
 Com_Printf( "Winsock Initialized\n" );


 NET_GetCvars();


 NET_Config( qtrue );
}
