
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int count; char const** cvarList; float* cvarValue; int * cvarStr; scalar_t__ strDef; } ;
typedef TYPE_1__ multiDef_t ;
struct TYPE_6__ {int cvar; scalar_t__ typeData; } ;
typedef TYPE_2__ itemDef_t ;
typedef int buff ;
struct TYPE_7__ {float (* getCVarValue ) (int ) ;int (* getCVarString ) (int ,char*,int) ;} ;


 TYPE_4__* DC ;
 scalar_t__ Q_stricmp (char*,int ) ;
 int stub1 (int ,char*,int) ;
 float stub2 (int ) ;

const char *Item_Multi_Setting(itemDef_t *item) {
 char buff[1024];
 float value = 0;
 int i;
 multiDef_t *multiPtr = (multiDef_t*)item->typeData;
 if (multiPtr) {
  if (multiPtr->strDef) {
     DC->getCVarString(item->cvar, buff, sizeof(buff));
  } else {
   value = DC->getCVarValue(item->cvar);
  }
  for (i = 0; i < multiPtr->count; i++) {
   if (multiPtr->strDef) {
    if (Q_stricmp(buff, multiPtr->cvarStr[i]) == 0) {
     return multiPtr->cvarList[i];
    }
   } else {
     if (multiPtr->cvarValue[i] == value) {
     return multiPtr->cvarList[i];
     }
    }
   }
 }
 return "";
}
