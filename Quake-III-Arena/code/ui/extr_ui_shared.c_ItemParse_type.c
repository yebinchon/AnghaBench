
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ itemDef_t ;


 int Item_ValidateTypeData (TYPE_1__*) ;
 int PC_Int_Parse (int,int *) ;
 int qfalse ;
 int qtrue ;

qboolean ItemParse_type( itemDef_t *item, int handle ) {
 if (!PC_Int_Parse(handle, &item->type)) {
  return qfalse;
 }
 Item_ValidateTypeData(item);
 return qtrue;
}
