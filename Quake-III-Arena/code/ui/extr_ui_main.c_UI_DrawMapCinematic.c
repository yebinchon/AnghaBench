
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec4_t ;
struct TYPE_9__ {int h; int w; int y; int x; } ;
typedef TYPE_2__ rectDef_t ;
typedef scalar_t__ qboolean ;
struct TYPE_12__ {int mapCount; TYPE_1__* mapList; } ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {int integer; } ;
struct TYPE_8__ {int cinematic; int mapLoadName; } ;


 int CIN_loop ;
 int CIN_silent ;
 int UI_DrawMapPreview (TYPE_2__*,float,int ,scalar_t__) ;
 int trap_CIN_DrawCinematic (int) ;
 int trap_CIN_PlayCinematic (int ,int ,int ,int ,int ,int) ;
 int trap_CIN_RunCinematic (int) ;
 int trap_CIN_SetExtents (int,int ,int ,int ,int ) ;
 int trap_Cvar_Set (char*,char*) ;
 TYPE_5__ uiInfo ;
 TYPE_4__ ui_currentMap ;
 TYPE_3__ ui_currentNetMap ;
 int va (char*,int ) ;

__attribute__((used)) static void UI_DrawMapCinematic(rectDef_t *rect, float scale, vec4_t color, qboolean net) {

 int map = (net) ? ui_currentNetMap.integer : ui_currentMap.integer;
 if (map < 0 || map > uiInfo.mapCount) {
  if (net) {
   ui_currentNetMap.integer = 0;
   trap_Cvar_Set("ui_currentNetMap", "0");
  } else {
   ui_currentMap.integer = 0;
   trap_Cvar_Set("ui_currentMap", "0");
  }
  map = 0;
 }

 if (uiInfo.mapList[map].cinematic >= -1) {
  if (uiInfo.mapList[map].cinematic == -1) {
   uiInfo.mapList[map].cinematic = trap_CIN_PlayCinematic(va("%s.roq", uiInfo.mapList[map].mapLoadName), 0, 0, 0, 0, (CIN_loop | CIN_silent) );
  }
  if (uiInfo.mapList[map].cinematic >= 0) {
    trap_CIN_RunCinematic(uiInfo.mapList[map].cinematic);
    trap_CIN_SetExtents(uiInfo.mapList[map].cinematic, rect->x, rect->y, rect->w, rect->h);
    trap_CIN_DrawCinematic(uiInfo.mapList[map].cinematic);
  } else {
   uiInfo.mapList[map].cinematic = -2;
  }
 } else {
  UI_DrawMapPreview(rect, scale, color, net);
 }
}
