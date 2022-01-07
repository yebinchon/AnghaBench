
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int name; } ;
struct TYPE_5__ {TYPE_1__ window; } ;
typedef TYPE_2__ itemDef_t ;


 int PC_String_Parse (int,int *) ;
 int qfalse ;
 int qtrue ;

qboolean ItemParse_name( itemDef_t *item, int handle ) {
 if (!PC_String_Parse(handle, &item->window.name)) {
  return qfalse;
 }
 return qtrue;
}
