
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int K_ENTER ;
 int K_KP_ENTER ;
 int K_MOUSE1 ;
 int K_MOUSE2 ;
 int numSkillLevels ;
 int qfalse ;
 int qtrue ;
 int trap_Cvar_Set (char*,int ) ;
 int trap_Cvar_VariableValue (char*) ;
 int va (char*,int) ;

__attribute__((used)) static qboolean UI_Skill_HandleKey(int flags, float *special, int key) {
  if (key == K_MOUSE1 || key == K_MOUSE2 || key == K_ENTER || key == K_KP_ENTER) {
   int i = trap_Cvar_VariableValue( "g_spSkill" );

  if (key == K_MOUSE2) {
     i--;
  } else {
     i++;
  }

    if (i < 1) {
   i = numSkillLevels;
  } else if (i > numSkillLevels) {
      i = 1;
    }

    trap_Cvar_Set("g_spSkill", va("%i", i));
    return qtrue;
  }
  return qfalse;
}
