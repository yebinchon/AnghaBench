
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int demoversion; } ;


 int UI_InitMemory () ;
 int UI_LoadArenas () ;
 int UI_LoadBots () ;
 int qfalse ;
 int qtrue ;
 scalar_t__ trap_Cvar_VariableValue (char*) ;
 int ui_numSinglePlayerArenas ;
 scalar_t__ ui_numSpecialSinglePlayerArenas ;
 TYPE_1__ uis ;

void UI_InitGameinfo( void ) {

 UI_InitMemory();
 UI_LoadArenas();
 UI_LoadBots();

 if( (trap_Cvar_VariableValue( "fs_restrict" )) || (ui_numSpecialSinglePlayerArenas == 0 && ui_numSinglePlayerArenas == 4) ) {
  uis.demoversion = qtrue;
 }
 else {
  uis.demoversion = qfalse;
 }
}
