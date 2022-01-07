
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
typedef TYPE_2__ menucommon_s ;
struct TYPE_4__ {int shader; } ;
struct TYPE_6__ {int silenceSound; int nightmareSound; int * skillpics; TYPE_1__ art_skillPic; } ;


 int CHAN_ANNOUNCER ;
 int ID_BABY ;
 int ID_NIGHTMARE ;
 int QM_ACTIVATED ;
 int SetSkillColor (int,int ) ;
 int color_red ;
 int color_white ;
 TYPE_3__ skillMenuInfo ;
 int trap_Cvar_SetValue (char*,int) ;
 scalar_t__ trap_Cvar_VariableValue (char*) ;
 int trap_S_StartLocalSound (int ,int ) ;

__attribute__((used)) static void UI_SPSkillMenu_SkillEvent( void *ptr, int notification ) {
 int id;
 int skill;

 if (notification != QM_ACTIVATED)
  return;

 SetSkillColor( (int)trap_Cvar_VariableValue( "g_spSkill" ), color_red );

 id = ((menucommon_s*)ptr)->id;
 skill = id - ID_BABY + 1;
 trap_Cvar_SetValue( "g_spSkill", skill );

 SetSkillColor( skill, color_white );
 skillMenuInfo.art_skillPic.shader = skillMenuInfo.skillpics[skill - 1];

 if( id == ID_NIGHTMARE ) {
  trap_S_StartLocalSound( skillMenuInfo.nightmareSound, CHAN_ANNOUNCER );
 }
 else {
  trap_S_StartLocalSound( skillMenuInfo.silenceSound, CHAN_ANNOUNCER );
 }
}
