
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int flags; } ;
struct TYPE_5__ {TYPE_1__ window; } ;
typedef TYPE_2__ itemDef_t ;


 int PC_Int_Parse (int,int*) ;
 int WINDOW_VISIBLE ;
 int qfalse ;
 int qtrue ;

qboolean ItemParse_visible( itemDef_t *item, int handle ) {
 int i;

 if (!PC_Int_Parse(handle, &i)) {
  return qfalse;
 }
 if (i) {
  item->window.flags |= WINDOW_VISIBLE;
 }
 return qtrue;
}
