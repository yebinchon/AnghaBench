
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clientNum; } ;


 int CG_BuildSpectatorString () ;
 char* CG_ConfigString (int) ;
 int CG_LoadingClient (int) ;
 int CG_NewClientInfo (int) ;
 int CS_PLAYERS ;
 int MAX_CLIENTS ;
 TYPE_1__ cg ;

__attribute__((used)) static void CG_RegisterClients( void ) {
 int i;

 CG_LoadingClient(cg.clientNum);
 CG_NewClientInfo(cg.clientNum);

 for (i=0 ; i<MAX_CLIENTS ; i++) {
  const char *clientInfo;

  if (cg.clientNum == i) {
   continue;
  }

  clientInfo = CG_ConfigString( CS_PLAYERS+i );
  if ( !clientInfo[0]) {
   continue;
  }
  CG_LoadingClient( i );
  CG_NewClientInfo( i );
 }
 CG_BuildSpectatorString();
}
