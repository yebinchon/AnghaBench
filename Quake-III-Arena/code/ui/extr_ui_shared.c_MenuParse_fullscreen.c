
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int fullScreen; } ;
typedef TYPE_1__ menuDef_t ;
typedef int itemDef_t ;


 int PC_Int_Parse (int,int*) ;
 int qfalse ;
 int qtrue ;

qboolean MenuParse_fullscreen( itemDef_t *item, int handle ) {
 menuDef_t *menu = (menuDef_t*)item;
 if (!PC_Int_Parse(handle, (int*) &menu->fullScreen)) {
  return qfalse;
 }
 return qtrue;
}
