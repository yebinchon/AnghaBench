
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ART_BACK0 ;
 int ART_BACK1 ;
 int ART_FRAMEL ;
 int ART_FRAMER ;
 int trap_R_RegisterShaderNoMip (int ) ;

void UI_SoundOptionsMenu_Cache( void ) {
 trap_R_RegisterShaderNoMip( ART_FRAMEL );
 trap_R_RegisterShaderNoMip( ART_FRAMER );
 trap_R_RegisterShaderNoMip( ART_BACK0 );
 trap_R_RegisterShaderNoMip( ART_BACK1 );
}
