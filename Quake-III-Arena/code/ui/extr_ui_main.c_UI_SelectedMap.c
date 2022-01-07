
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mapCount; TYPE_1__* mapList; } ;
struct TYPE_3__ {char const* mapName; scalar_t__ active; } ;


 TYPE_2__ uiInfo ;

__attribute__((used)) static const char *UI_SelectedMap(int index, int *actual) {
 int i, c;
 c = 0;
 *actual = 0;
 for (i = 0; i < uiInfo.mapCount; i++) {
  if (uiInfo.mapList[i].active) {
   if (c == index) {
    *actual = i;
    return uiInfo.mapList[i].mapName;
   } else {
    c++;
   }
  }
 }
 return "";
}
