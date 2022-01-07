
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {scalar_t__ currentCrosshair; } ;


 int K_ENTER ;
 int K_KP_ENTER ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 scalar_t__ NUM_CROSSHAIRS ;
 int qfalse ;
 int qtrue ;
 int trap_Cvar_Set (char*,int ) ;
 TYPE_1__ uiInfo ;
 int va (char*,scalar_t__) ;

__attribute__((used)) static qboolean UI_Crosshair_HandleKey(int flags, float *special, int key) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {
  if (key == K_MOUSE2) {
   uiInfo.currentCrosshair--;
  } else {
   uiInfo.currentCrosshair++;
  }

  if (uiInfo.currentCrosshair >= NUM_CROSSHAIRS) {
   uiInfo.currentCrosshair = 0;
  } else if (uiInfo.currentCrosshair < 0) {
   uiInfo.currentCrosshair = NUM_CROSSHAIRS - 1;
  }
  trap_Cvar_Set("cg_drawCrosshair", va("%d", uiInfo.currentCrosshair));
  return qtrue;
 }
 return qfalse;
}
