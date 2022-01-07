
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ menucommon_s ;
struct TYPE_4__ {int changesmade; int section; } ;


 int C_LOOKING ;
 int C_MISC ;
 int C_MOVEMENT ;
 int C_WEAPONS ;
 int Controls_ResetDefaults_Action ;
 int Controls_ResetDefaults_Draw ;
 int Controls_SetConfig () ;
 int Controls_Update () ;
 int QM_ACTIVATED ;
 int UI_ConfirmMenu (char*,int ,int ) ;
 int UI_PopMenu () ;
 int qtrue ;
 TYPE_2__ s_controls ;

__attribute__((used)) static void Controls_MenuEvent( void* ptr, int event )
{
 switch (((menucommon_s*)ptr)->id)
 {
  case 131:
   if (event == QM_ACTIVATED)
   {
    s_controls.section = C_MOVEMENT;
    Controls_Update();
   }
   break;

  case 134:
   if (event == QM_ACTIVATED)
   {
    s_controls.section = C_LOOKING;
    Controls_Update();
   }
   break;

  case 128:
   if (event == QM_ACTIVATED)
   {
    s_controls.section = C_WEAPONS;
    Controls_Update();
   }
   break;

  case 133:
   if (event == QM_ACTIVATED)
   {
    s_controls.section = C_MISC;
    Controls_Update();
   }
   break;

  case 140:
   if (event == QM_ACTIVATED)
   {
    UI_ConfirmMenu( "SET TO DEFAULTS?", Controls_ResetDefaults_Draw, Controls_ResetDefaults_Action );
   }
   break;

  case 141:
   if (event == QM_ACTIVATED)
   {
    if (s_controls.changesmade)
     Controls_SetConfig();
    UI_PopMenu();
   }
   break;

  case 130:
   if (event == QM_ACTIVATED)
   {
    Controls_SetConfig();
    UI_PopMenu();
   }
   break;

  case 139:
   if (event == QM_ACTIVATED)
   {
    UI_PopMenu();
   }
   break;

  case 138:
  case 132:
  case 137:
  case 129:
  case 143:
  case 142:
  case 136:
  case 135:
   if (event == QM_ACTIVATED)
   {
    s_controls.changesmade = qtrue;
   }
   break;
 }
}
