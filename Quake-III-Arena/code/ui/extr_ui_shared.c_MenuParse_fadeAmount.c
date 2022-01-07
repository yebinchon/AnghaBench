
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {int fadeAmount; } ;
typedef TYPE_1__ menuDef_t ;
typedef int itemDef_t ;


 int PC_Float_Parse (int,int *) ;
 int qfalse ;
 int qtrue ;

qboolean MenuParse_fadeAmount( itemDef_t *item, int handle ) {
 menuDef_t *menu = (menuDef_t*)item;

 if (!PC_Float_Parse(handle, &menu->fadeAmount)) {
  return qfalse;
 }
 return qtrue;
}
