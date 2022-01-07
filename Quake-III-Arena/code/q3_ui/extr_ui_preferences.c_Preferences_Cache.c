
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * crosshairShader; } ;


 int ART_BACK0 ;
 int ART_BACK1 ;
 int ART_FRAMEL ;
 int ART_FRAMER ;
 int NUM_CROSSHAIRS ;
 TYPE_1__ s_preferences ;
 int trap_R_RegisterShaderNoMip (int ) ;
 int va (char*,char) ;

void Preferences_Cache( void ) {
 int n;

 trap_R_RegisterShaderNoMip( ART_FRAMEL );
 trap_R_RegisterShaderNoMip( ART_FRAMER );
 trap_R_RegisterShaderNoMip( ART_BACK0 );
 trap_R_RegisterShaderNoMip( ART_BACK1 );
 for( n = 0; n < NUM_CROSSHAIRS; n++ ) {
  s_preferences.crosshairShader[n] = trap_R_RegisterShaderNoMip( va("gfx/2d/crosshair%c", 'a' + n ) );
 }
}
