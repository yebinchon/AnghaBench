
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_3__ {int cvarFlags; int enableCvar; } ;
typedef TYPE_1__ itemDef_t ;


 int CVAR_ENABLE ;
 scalar_t__ PC_Script_Parse (int,int *) ;
 int qfalse ;
 int qtrue ;

qboolean ItemParse_enableCvar( itemDef_t *item, int handle ) {
 if (PC_Script_Parse(handle, &item->enableCvar)) {
  item->cvarFlags = CVAR_ENABLE;
  return qtrue;
 }
 return qfalse;
}
