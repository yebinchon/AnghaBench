
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {int background; } ;
struct TYPE_6__ {TYPE_1__ window; } ;
typedef TYPE_2__ itemDef_t ;
struct TYPE_7__ {int (* registerShaderNoMip ) (char const*) ;} ;


 TYPE_4__* DC ;
 int PC_String_Parse (int,char const**) ;
 int qfalse ;
 int qtrue ;
 int stub1 (char const*) ;

qboolean ItemParse_background( itemDef_t *item, int handle ) {
 const char *temp;

 if (!PC_String_Parse(handle, &temp)) {
  return qfalse;
 }
 item->window.background = DC->registerShaderNoMip(temp);
 return qtrue;
}
