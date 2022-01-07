
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int background; } ;
struct TYPE_5__ {TYPE_1__ window; } ;
typedef TYPE_2__ menuDef_t ;
typedef int itemDef_t ;
struct TYPE_6__ {int (* registerShaderNoMip ) (char const*) ;} ;


 TYPE_3__* DC ;
 int PC_String_Parse (int,char const**) ;
 int qfalse ;
 int qtrue ;
 int stub1 (char const*) ;

qboolean MenuParse_background( itemDef_t *item, int handle ) {
 const char *buff;
 menuDef_t *menu = (menuDef_t*)item;

 if (!PC_String_Parse(handle, &buff)) {
  return qfalse;
 }
 menu->window.background = DC->registerShaderNoMip(buff);
 return qtrue;
}
