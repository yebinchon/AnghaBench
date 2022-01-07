
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CG_ConfigString (int) ;
 int CG_NewClientInfo (int) ;
 int CS_PLAYERS ;
 int MAX_CLIENTS ;

__attribute__((used)) static void CG_ForceModelChange( void ) {
 int i;

 for (i=0 ; i<MAX_CLIENTS ; i++) {
  const char *clientInfo;

  clientInfo = CG_ConfigString( CS_PLAYERS+i );
  if ( !clientInfo[0] ) {
   continue;
  }
  CG_NewClientInfo( i );
 }
}
