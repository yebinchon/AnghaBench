
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_2__ {scalar_t__ skillIndex; } ;


 int K_ENTER ;
 int K_KP_ENTER ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 scalar_t__ numSkillLevels ;
 int qfalse ;
 int qtrue ;
 TYPE_1__ uiInfo ;

__attribute__((used)) static qboolean UI_BotSkill_HandleKey(int flags, float *special, int key) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {
  if (key == K_MOUSE2) {
   uiInfo.skillIndex--;
  } else {
   uiInfo.skillIndex++;
  }
  if (uiInfo.skillIndex >= numSkillLevels) {
   uiInfo.skillIndex = 0;
  } else if (uiInfo.skillIndex < 0) {
   uiInfo.skillIndex = numSkillLevels-1;
  }
    return qtrue;
  }
 return qfalse;
}
