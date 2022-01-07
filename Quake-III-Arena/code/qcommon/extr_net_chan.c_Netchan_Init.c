
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVAR_INIT ;
 int CVAR_TEMP ;
 void* Cvar_Get (char*,char*,int ) ;
 void* qport ;
 void* showdrop ;
 void* showpackets ;
 char* va (char*,int) ;

void Netchan_Init( int port ) {
 port &= 0xffff;
 showpackets = Cvar_Get ("showpackets", "0", CVAR_TEMP );
 showdrop = Cvar_Get ("showdrop", "0", CVAR_TEMP );
 qport = Cvar_Get ("net_qport", va("%i", port), CVAR_INIT );
}
