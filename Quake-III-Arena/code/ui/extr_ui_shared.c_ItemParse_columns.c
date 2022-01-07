
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_7__ {int numColumns; TYPE_1__* columnInfo; } ;
typedef TYPE_2__ listBoxDef_t ;
struct TYPE_8__ {scalar_t__ typeData; } ;
typedef TYPE_3__ itemDef_t ;
struct TYPE_6__ {int pos; int width; int maxChars; } ;


 int Item_ValidateTypeData (TYPE_3__*) ;
 int MAX_LB_COLUMNS ;
 scalar_t__ PC_Int_Parse (int,int*) ;
 int qfalse ;
 int qtrue ;

qboolean ItemParse_columns( itemDef_t *item, int handle ) {
 int num, i;
 listBoxDef_t *listPtr;

 Item_ValidateTypeData(item);
 if (!item->typeData)
  return qfalse;
 listPtr = (listBoxDef_t*)item->typeData;
 if (PC_Int_Parse(handle, &num)) {
  if (num > MAX_LB_COLUMNS) {
   num = MAX_LB_COLUMNS;
  }
  listPtr->numColumns = num;
  for (i = 0; i < num; i++) {
   int pos, width, maxChars;

   if (PC_Int_Parse(handle, &pos) && PC_Int_Parse(handle, &width) && PC_Int_Parse(handle, &maxChars)) {
    listPtr->columnInfo[i].pos = pos;
    listPtr->columnInfo[i].width = width;
    listPtr->columnInfo[i].maxChars = maxChars;
   } else {
    return qfalse;
   }
  }
 } else {
  return qfalse;
 }
 return qtrue;
}
