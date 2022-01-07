
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {scalar_t__ integer; } ;


 scalar_t__ AS_GLOBAL ;
 scalar_t__ AS_MPLAYER ;
 int K_ENTER ;
 int K_KP_ENTER ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int UI_BuildServerDisplayList (int ) ;
 int UI_StartServerRefresh (int ) ;
 scalar_t__ numNetSources ;
 int qfalse ;
 int qtrue ;
 int trap_Cvar_Set (char*,int ) ;
 TYPE_1__ ui_netSource ;
 int va (char*,scalar_t__) ;

__attribute__((used)) static qboolean UI_NetSource_HandleKey(int flags, float *special, int key) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {

  if (key == K_MOUSE2) {
   ui_netSource.integer--;
   if (ui_netSource.integer == AS_MPLAYER)
    ui_netSource.integer--;
  } else {
   ui_netSource.integer++;
   if (ui_netSource.integer == AS_MPLAYER)
    ui_netSource.integer++;
  }

  if (ui_netSource.integer >= numNetSources) {
      ui_netSource.integer = 0;
    } else if (ui_netSource.integer < 0) {
      ui_netSource.integer = numNetSources - 1;
  }

  UI_BuildServerDisplayList(qtrue);
  if (ui_netSource.integer != AS_GLOBAL) {
   UI_StartServerRefresh(qtrue);
  }
   trap_Cvar_Set( "ui_netSource", va("%d", ui_netSource.integer));
    return qtrue;
  }
  return qfalse;
}
