
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {scalar_t__ numJoinGameTypes; } ;
struct TYPE_3__ {scalar_t__ integer; } ;


 int K_ENTER ;
 int K_KP_ENTER ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int UI_BuildServerDisplayList (int ) ;
 int qfalse ;
 int qtrue ;
 int trap_Cvar_Set (char*,int ) ;
 TYPE_2__ uiInfo ;
 TYPE_1__ ui_joinGameType ;
 int va (char*,scalar_t__) ;

__attribute__((used)) static qboolean UI_JoinGameType_HandleKey(int flags, float *special, int key) {
 if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {

  if (key == K_MOUSE2) {
   ui_joinGameType.integer--;
  } else {
   ui_joinGameType.integer++;
  }

  if (ui_joinGameType.integer < 0) {
   ui_joinGameType.integer = uiInfo.numJoinGameTypes - 1;
  } else if (ui_joinGameType.integer >= uiInfo.numJoinGameTypes) {
   ui_joinGameType.integer = 0;
  }

  trap_Cvar_Set( "ui_joinGameType", va("%d", ui_joinGameType.integer));
  UI_BuildServerDisplayList(qtrue);
  return qtrue;
 }
 return qfalse;
}
