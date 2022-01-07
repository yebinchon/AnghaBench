
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ART_ARROWS0 ;
 int ART_ARROWS_DOWN ;
 int ART_ARROWS_UP ;
 int ART_BACK0 ;
 int ART_BACK1 ;
 int ART_CONNECT0 ;
 int ART_CONNECT1 ;
 int ART_CREATE0 ;
 int ART_CREATE1 ;
 int ART_PUNKBUSTER ;
 int ART_REFRESH0 ;
 int ART_REFRESH1 ;
 int ART_SPECIFY0 ;
 int ART_SPECIFY1 ;
 int ART_UNKNOWNMAP ;
 int trap_R_RegisterShaderNoMip (int ) ;

void ArenaServers_Cache( void ) {
 trap_R_RegisterShaderNoMip( ART_BACK0 );
 trap_R_RegisterShaderNoMip( ART_BACK1 );
 trap_R_RegisterShaderNoMip( ART_CREATE0 );
 trap_R_RegisterShaderNoMip( ART_CREATE1 );
 trap_R_RegisterShaderNoMip( ART_SPECIFY0 );
 trap_R_RegisterShaderNoMip( ART_SPECIFY1 );
 trap_R_RegisterShaderNoMip( ART_REFRESH0 );
 trap_R_RegisterShaderNoMip( ART_REFRESH1 );
 trap_R_RegisterShaderNoMip( ART_CONNECT0 );
 trap_R_RegisterShaderNoMip( ART_CONNECT1 );
 trap_R_RegisterShaderNoMip( ART_ARROWS0 );
 trap_R_RegisterShaderNoMip( ART_ARROWS_UP );
 trap_R_RegisterShaderNoMip( ART_ARROWS_DOWN );
 trap_R_RegisterShaderNoMip( ART_UNKNOWNMAP );
 trap_R_RegisterShaderNoMip( ART_PUNKBUSTER );
}
