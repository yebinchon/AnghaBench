
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTSELECT_ACCEPT0 ;
 int BOTSELECT_ACCEPT1 ;
 int BOTSELECT_ARROWS ;
 int BOTSELECT_ARROWSL ;
 int BOTSELECT_ARROWSR ;
 int BOTSELECT_BACK0 ;
 int BOTSELECT_BACK1 ;
 int BOTSELECT_SELECT ;
 int BOTSELECT_SELECTED ;
 int trap_R_RegisterShaderNoMip (int ) ;

void UI_BotSelectMenu_Cache( void ) {
 trap_R_RegisterShaderNoMip( BOTSELECT_BACK0 );
 trap_R_RegisterShaderNoMip( BOTSELECT_BACK1 );
 trap_R_RegisterShaderNoMip( BOTSELECT_ACCEPT0 );
 trap_R_RegisterShaderNoMip( BOTSELECT_ACCEPT1 );
 trap_R_RegisterShaderNoMip( BOTSELECT_SELECT );
 trap_R_RegisterShaderNoMip( BOTSELECT_SELECTED );
 trap_R_RegisterShaderNoMip( BOTSELECT_ARROWS );
 trap_R_RegisterShaderNoMip( BOTSELECT_ARROWSL );
 trap_R_RegisterShaderNoMip( BOTSELECT_ARROWSR );
}
