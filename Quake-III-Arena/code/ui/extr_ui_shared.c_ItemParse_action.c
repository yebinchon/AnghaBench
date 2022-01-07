
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int action; } ;
typedef TYPE_1__ itemDef_t ;


 int PC_Script_Parse (int,int *) ;
 int qfalse ;
 int qtrue ;

qboolean ItemParse_action( itemDef_t *item, int handle ) {
 if (!PC_Script_Parse(handle, &item->action)) {
  return qfalse;
 }
 return qtrue;
}
