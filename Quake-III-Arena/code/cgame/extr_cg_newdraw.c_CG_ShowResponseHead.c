
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int time; int voiceTime; } ;


 int Menus_OpenByName (char*) ;
 TYPE_1__ cg ;
 int trap_Cvar_Set (char*,char*) ;

void CG_ShowResponseHead() {
  Menus_OpenByName("voiceMenu");
 trap_Cvar_Set("cl_conXOffset", "72");
 cg.voiceTime = cg.time;
}
