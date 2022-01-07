
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ART_ARROWDOWN ;
 int ART_ARROWS ;
 int ART_ARROWUP ;
 int ART_BACK0 ;
 int ART_BACK1 ;
 int ART_BACKGROUND ;
 int ART_FIGHT0 ;
 int ART_FIGHT1 ;
 int trap_R_RegisterShaderNoMip (int ) ;

void UI_AddBots_Cache( void ) {
 trap_R_RegisterShaderNoMip( ART_BACK0 );
 trap_R_RegisterShaderNoMip( ART_BACK1 );
 trap_R_RegisterShaderNoMip( ART_FIGHT0 );
 trap_R_RegisterShaderNoMip( ART_FIGHT1 );
 trap_R_RegisterShaderNoMip( ART_BACKGROUND );
 trap_R_RegisterShaderNoMip( ART_ARROWS );
 trap_R_RegisterShaderNoMip( ART_ARROWUP );
 trap_R_RegisterShaderNoMip( ART_ARROWDOWN );
}
