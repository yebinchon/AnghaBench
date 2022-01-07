
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {scalar_t__ integer; } ;


 int K_ENTER ;
 int K_KP_ENTER ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int UI_BuildServerDisplayList (int ) ;
 scalar_t__ numServerFilters ;
 int qfalse ;
 int qtrue ;
 TYPE_1__ ui_serverFilterType ;

__attribute__((used)) static qboolean UI_NetFilter_HandleKey(int flags, float *special, int key) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {

  if (key == K_MOUSE2) {
   ui_serverFilterType.integer--;
  } else {
   ui_serverFilterType.integer++;
  }

    if (ui_serverFilterType.integer >= numServerFilters) {
      ui_serverFilterType.integer = 0;
    } else if (ui_serverFilterType.integer < 0) {
      ui_serverFilterType.integer = numServerFilters - 1;
  }
  UI_BuildServerDisplayList(qtrue);
    return qtrue;
  }
  return qfalse;
}
