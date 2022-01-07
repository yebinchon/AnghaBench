
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ window; } ;
typedef TYPE_2__ menuDef_t ;
typedef int itemDef_t ;


 int WINDOW_POPUP ;
 int qtrue ;

qboolean MenuParse_popup( itemDef_t *item, int handle ) {
 menuDef_t *menu = (menuDef_t*)item;
 menu->window.flags |= WINDOW_POPUP;
 return qtrue;
}
