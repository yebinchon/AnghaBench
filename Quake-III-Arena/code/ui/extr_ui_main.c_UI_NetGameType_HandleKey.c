
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {size_t numGameTypes; TYPE_1__* gameTypes; } ;
struct TYPE_5__ {size_t integer; } ;
struct TYPE_4__ {size_t gtEnum; } ;


 int FEEDER_ALLMAPS ;
 int K_ENTER ;
 int K_KP_ENTER ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int Menu_SetFeederSelection (int *,int ,int ,int *) ;
 int UI_MapCountByGameType (int ) ;
 int qfalse ;
 int qtrue ;
 int trap_Cvar_Set (char*,char*) ;
 TYPE_3__ uiInfo ;
 TYPE_2__ ui_netGameType ;
 char* va (char*,size_t) ;

__attribute__((used)) static qboolean UI_NetGameType_HandleKey(int flags, float *special, int key) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {

  if (key == K_MOUSE2) {
   ui_netGameType.integer--;
  } else {
   ui_netGameType.integer++;
  }

    if (ui_netGameType.integer < 0) {
      ui_netGameType.integer = uiInfo.numGameTypes - 1;
  } else if (ui_netGameType.integer >= uiInfo.numGameTypes) {
      ui_netGameType.integer = 0;
    }

   trap_Cvar_Set( "ui_netGameType", va("%d", ui_netGameType.integer));
   trap_Cvar_Set( "ui_actualnetGameType", va("%d", uiInfo.gameTypes[ui_netGameType.integer].gtEnum));
   trap_Cvar_Set( "ui_currentNetMap", "0");
  UI_MapCountByGameType(qfalse);
  Menu_SetFeederSelection(((void*)0), FEEDER_ALLMAPS, 0, ((void*)0));
    return qtrue;
  }
  return qfalse;
}
