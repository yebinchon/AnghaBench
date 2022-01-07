
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int botIndex; int characterCount; } ;


 int GT_TEAM ;
 int K_ENTER ;
 int K_KP_ENTER ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int UI_GetNumBots () ;
 int qfalse ;
 int qtrue ;
 int trap_Cvar_VariableValue (char*) ;
 TYPE_1__ uiInfo ;

__attribute__((used)) static qboolean UI_BotName_HandleKey(int flags, float *special, int key) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {
  int game = trap_Cvar_VariableValue("g_gametype");
  int value = uiInfo.botIndex;

  if (key == K_MOUSE2) {
   value--;
  } else {
   value++;
  }

  if (game >= GT_TEAM) {
   if (value >= uiInfo.characterCount + 2) {
    value = 0;
   } else if (value < 0) {
    value = uiInfo.characterCount + 2 - 1;
   }
  } else {
   if (value >= UI_GetNumBots() + 2) {
    value = 0;
   } else if (value < 0) {
    value = UI_GetNumBots() + 2 - 1;
   }
  }
  uiInfo.botIndex = value;
    return qtrue;
  }
  return qfalse;
}
