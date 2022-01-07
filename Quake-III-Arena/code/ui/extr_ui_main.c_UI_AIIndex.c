
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int characterCount; TYPE_1__* characterList; } ;
struct TYPE_3__ {int name; } ;


 scalar_t__ Q_stricmp (char const*,int ) ;
 TYPE_2__ uiInfo ;

__attribute__((used)) static const int UI_AIIndex(const char *name) {
 int j;
 for (j = 0; j < uiInfo.characterCount; j++) {
  if (Q_stricmp(name, uiInfo.characterList[j].name) == 0) {
   return j;
  }
 }
 return 0;
}
