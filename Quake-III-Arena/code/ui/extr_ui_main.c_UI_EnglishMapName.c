
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mapCount; TYPE_1__* mapList; } ;
struct TYPE_3__ {char const* mapName; int mapLoadName; } ;


 scalar_t__ Q_stricmp (char const*,int ) ;
 TYPE_2__ uiInfo ;

__attribute__((used)) static const char *UI_EnglishMapName(const char *map) {
 int i;
 for (i = 0; i < uiInfo.mapCount; i++) {
  if (Q_stricmp(map, uiInfo.mapList[i].mapLoadName) == 0) {
   return uiInfo.mapList[i].mapName;
  }
 }
 return "";
}
