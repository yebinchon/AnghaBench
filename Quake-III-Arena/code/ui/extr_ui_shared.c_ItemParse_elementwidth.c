
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {int elementWidth; } ;
typedef TYPE_1__ listBoxDef_t ;
struct TYPE_6__ {scalar_t__ typeData; } ;
typedef TYPE_2__ itemDef_t ;


 int Item_ValidateTypeData (TYPE_2__*) ;
 int PC_Float_Parse (int,int *) ;
 int qfalse ;
 int qtrue ;

qboolean ItemParse_elementwidth( itemDef_t *item, int handle ) {
 listBoxDef_t *listPtr;

 Item_ValidateTypeData(item);
 listPtr = (listBoxDef_t*)item->typeData;
 if (!PC_Float_Parse(handle, &listPtr->elementWidth)) {
  return qfalse;
 }
 return qtrue;
}
