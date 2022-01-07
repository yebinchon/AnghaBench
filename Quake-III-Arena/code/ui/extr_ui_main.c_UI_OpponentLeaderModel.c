
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int characterCount; TYPE_1__* characterList; } ;
struct TYPE_3__ {char const* base; int name; } ;


 scalar_t__ Q_stricmp (char const*,int ) ;
 char* UI_OpponentLeaderHead () ;
 TYPE_2__ uiInfo ;

__attribute__((used)) static const char *UI_OpponentLeaderModel() {
 int i;
 const char *head = UI_OpponentLeaderHead();
 for (i = 0; i < uiInfo.characterCount; i++) {
  if (Q_stricmp(head, uiInfo.characterList[i].name) == 0) {
   return uiInfo.characterList[i].base;
  }
 }
 return "James";
}
