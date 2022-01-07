
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {int angle; } ;
typedef TYPE_1__ modelDef_t ;
struct TYPE_7__ {int asset; scalar_t__ typeData; } ;
typedef TYPE_2__ itemDef_t ;
struct TYPE_8__ {int (* registerModel ) (char const*) ;} ;


 TYPE_5__* DC ;
 int Item_ValidateTypeData (TYPE_2__*) ;
 int PC_String_Parse (int,char const**) ;
 int qfalse ;
 int qtrue ;
 int rand () ;
 int stub1 (char const*) ;

qboolean ItemParse_asset_model( itemDef_t *item, int handle ) {
 const char *temp;
 modelDef_t *modelPtr;
 Item_ValidateTypeData(item);
 modelPtr = (modelDef_t*)item->typeData;

 if (!PC_String_Parse(handle, &temp)) {
  return qfalse;
 }
 item->asset = DC->registerModel(temp);
 modelPtr->angle = rand() % 360;
 return qtrue;
}
