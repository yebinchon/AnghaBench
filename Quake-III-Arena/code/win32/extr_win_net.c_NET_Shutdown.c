
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NET_Config (scalar_t__) ;
 int WSACleanup () ;
 scalar_t__ qfalse ;
 scalar_t__ winsockInitialized ;

void NET_Shutdown( void ) {
 if ( !winsockInitialized ) {
  return;
 }
 NET_Config( qfalse );
 WSACleanup();
 winsockInitialized = qfalse;
}
