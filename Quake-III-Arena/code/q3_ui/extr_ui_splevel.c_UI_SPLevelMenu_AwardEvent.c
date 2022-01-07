
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ menucommon_s ;
struct TYPE_4__ {int * awardSounds; } ;


 int CHAN_ANNOUNCER ;
 int ID_AWARD1 ;
 int QM_ACTIVATED ;
 TYPE_2__ levelMenuInfo ;
 int trap_S_StartLocalSound (int ,int ) ;

__attribute__((used)) static void UI_SPLevelMenu_AwardEvent( void* ptr, int notification ) {
 int n;

 if (notification != QM_ACTIVATED) {
  return;
 }

 n = ((menucommon_s*)ptr)->id - ID_AWARD1;
 trap_S_StartLocalSound( levelMenuInfo.awardSounds[n], CHAN_ANNOUNCER );
}
