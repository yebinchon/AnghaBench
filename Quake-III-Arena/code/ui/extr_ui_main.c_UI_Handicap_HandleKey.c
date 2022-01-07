
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int Com_Clamp (int,int,int ) ;
 int K_ENTER ;
 int K_KP_ENTER ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int qfalse ;
 int qtrue ;
 int trap_Cvar_Set (char*,int ) ;
 int trap_Cvar_VariableValue (char*) ;
 int va (char*,int) ;

__attribute__((used)) static qboolean UI_Handicap_HandleKey(int flags, float *special, int key) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {
    int h;
    h = Com_Clamp( 5, 100, trap_Cvar_VariableValue("handicap") );
  if (key == K_MOUSE2) {
     h -= 5;
  } else {
     h += 5;
  }
    if (h > 100) {
      h = 5;
    } else if (h < 0) {
   h = 100;
  }
   trap_Cvar_Set( "handicap", va( "%i", h) );
    return qtrue;
  }
  return qfalse;
}
