
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int characterCount; int teamCount; int aliasCount; TYPE_3__* characterList; TYPE_2__* aliasList; TYPE_1__* teamList; } ;
struct TYPE_7__ {int reference; scalar_t__ active; int headImage; int * name; int base; } ;
struct TYPE_6__ {int * ai; int * name; } ;
struct TYPE_5__ {int ** teamMembers; int teamName; } ;


 scalar_t__ Q_stricmp (int *,int *) ;
 int TEAM_MEMBERS ;
 int UI_Cvar_VariableString (char*) ;
 int UI_TeamIndexFromName (int ) ;
 scalar_t__ UI_hasSkinForBase (int ,int ) ;
 scalar_t__ qfalse ;
 void* qtrue ;
 TYPE_4__ uiInfo ;

__attribute__((used)) static int UI_HeadCountByTeam() {
 static int init = 0;
 int i, j, k, c, tIndex;

 c = 0;
 if (!init) {
  for (i = 0; i < uiInfo.characterCount; i++) {
   uiInfo.characterList[i].reference = 0;
   for (j = 0; j < uiInfo.teamCount; j++) {
     if (UI_hasSkinForBase(uiInfo.characterList[i].base, uiInfo.teamList[j].teamName)) {
     uiInfo.characterList[i].reference |= (1<<j);
     }
   }
  }
  init = 1;
 }

 tIndex = UI_TeamIndexFromName(UI_Cvar_VariableString("ui_teamName"));


 for (i = 0; i < uiInfo.characterCount; i++) {
  uiInfo.characterList[i].active = qfalse;
  for(j = 0; j < TEAM_MEMBERS; j++) {
   if (uiInfo.teamList[tIndex].teamMembers[j] != ((void*)0)) {
    if (uiInfo.characterList[i].reference&(1<<tIndex)) {
     uiInfo.characterList[i].active = qtrue;
     c++;
     break;
    }
   }
  }
 }


 for(j = 0; j < TEAM_MEMBERS; j++) {
  for(k = 0; k < uiInfo.aliasCount; k++) {
   if (uiInfo.aliasList[k].name != ((void*)0)) {
    if (Q_stricmp(uiInfo.teamList[tIndex].teamMembers[j], uiInfo.aliasList[k].name)==0) {
     for (i = 0; i < uiInfo.characterCount; i++) {
      if (uiInfo.characterList[i].headImage != -1 && uiInfo.characterList[i].reference&(1<<tIndex) && Q_stricmp(uiInfo.aliasList[k].ai, uiInfo.characterList[i].name)==0) {
       if (uiInfo.characterList[i].active == qfalse) {
        uiInfo.characterList[i].active = qtrue;
        c++;
       }
       break;
      }
     }
    }
   }
  }
 }
 return c;
}
