
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {scalar_t__ typeData; int cvar; } ;
typedef TYPE_1__ itemDef_t ;
struct TYPE_6__ {int minVal; int maxVal; int defVal; } ;
typedef TYPE_2__ editFieldDef_t ;


 int Item_ValidateTypeData (TYPE_1__*) ;
 int PC_String_Parse (int,int *) ;
 int qfalse ;
 int qtrue ;

qboolean ItemParse_cvar( itemDef_t *item, int handle ) {
 editFieldDef_t *editPtr;

 Item_ValidateTypeData(item);
 if (!PC_String_Parse(handle, &item->cvar)) {
  return qfalse;
 }
 if (item->typeData) {
  editPtr = (editFieldDef_t*)item->typeData;
  editPtr->minVal = -1;
  editPtr->maxVal = -1;
  editPtr->defVal = -1;
 }
 return qtrue;
}
