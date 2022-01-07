
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int svFlags; } ;
struct TYPE_9__ {int trBase; } ;
struct TYPE_10__ {int eventParm; TYPE_1__ pos; } ;
struct TYPE_12__ {TYPE_3__ r; TYPE_2__ s; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_14__ {int time; } ;
struct TYPE_13__ {int redTakenTime; int redStatus; int blueTakenTime; int blueStatus; } ;


 int EV_GLOBAL_TEAM_SOUND ;
 int FLAG_ATBASE ;
 int GTS_BLUE_TAKEN ;
 int GTS_RED_TAKEN ;
 int G_Printf (char*) ;
 TYPE_4__* G_TempEntity (int ,int ) ;
 int SVF_BROADCAST ;


 TYPE_6__ level ;
 TYPE_5__ teamgame ;

void Team_TakeFlagSound( gentity_t *ent, int team ) {
 gentity_t *te;

 if (ent == ((void*)0)) {
  G_Printf ("Warning:  NULL passed to Team_TakeFlagSound\n");
  return;
 }



 switch(team) {
  case 128:
   if( teamgame.blueStatus != FLAG_ATBASE ) {
    if (teamgame.blueTakenTime > level.time - 10000)
     return;
   }
   teamgame.blueTakenTime = level.time;
   break;

  case 129:
   if( teamgame.redStatus != FLAG_ATBASE ) {
    if (teamgame.redTakenTime > level.time - 10000)
     return;
   }
   teamgame.redTakenTime = level.time;
   break;
 }

 te = G_TempEntity( ent->s.pos.trBase, EV_GLOBAL_TEAM_SOUND );
 if( team == 129 ) {
  te->s.eventParm = GTS_RED_TAKEN;
 }
 else {
  te->s.eventParm = GTS_BLUE_TAKEN;
 }
 te->r.svFlags |= SVF_BROADCAST;
}
