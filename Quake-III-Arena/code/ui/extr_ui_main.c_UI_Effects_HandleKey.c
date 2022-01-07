
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int effectsColor; } ;


 int K_ENTER ;
 int K_KP_ENTER ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int qfalse ;
 int qtrue ;
 int trap_Cvar_SetValue (char*,int ) ;
 TYPE_1__ uiInfo ;
 int * uitogamecode ;

__attribute__((used)) static qboolean UI_Effects_HandleKey(int flags, float *special, int key) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {

  if (key == K_MOUSE2) {
     uiInfo.effectsColor--;
  } else {
     uiInfo.effectsColor++;
  }

    if( uiInfo.effectsColor > 6 ) {
    uiInfo.effectsColor = 0;
  } else if (uiInfo.effectsColor < 0) {
    uiInfo.effectsColor = 6;
  }

   trap_Cvar_SetValue( "color1", uitogamecode[uiInfo.effectsColor] );
    return qtrue;
  }
  return qfalse;
}
