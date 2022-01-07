
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int count; } ;
typedef TYPE_1__ multiDef_t ;
struct TYPE_5__ {scalar_t__ typeData; } ;
typedef TYPE_2__ itemDef_t ;



int Item_Multi_CountSettings(itemDef_t *item) {
 multiDef_t *multiPtr = (multiDef_t*)item->typeData;
 if (multiPtr == ((void*)0)) {
  return 0;
 }
 return multiPtr->count;
}
