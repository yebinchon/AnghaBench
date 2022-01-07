
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int characterCount; TYPE_1__* characterList; } ;
struct TYPE_3__ {char const* name; scalar_t__ active; } ;


 TYPE_2__ uiInfo ;

__attribute__((used)) static const char *UI_SelectedHead(int index, int *actual) {
 int i, c;
 c = 0;
 *actual = 0;
 for (i = 0; i < uiInfo.characterCount; i++) {
  if (uiInfo.characterList[i].active) {
   if (c == index) {
    *actual = i;
    return uiInfo.characterList[i].name;
   } else {
    c++;
   }
  }
 }
 return "";
}
