
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ wait; scalar_t__ random; int use; int touch; } ;
typedef TYPE_1__ gentity_t ;


 scalar_t__ FRAMETIME ;
 int G_Printf (char*) ;
 int G_SpawnFloat (char*,char*,scalar_t__*) ;
 int InitTrigger (TYPE_1__*) ;
 int Touch_Multi ;
 int Use_Multi ;
 int trap_LinkEntity (TYPE_1__*) ;

void SP_trigger_multiple( gentity_t *ent ) {
 G_SpawnFloat( "wait", "0.5", &ent->wait );
 G_SpawnFloat( "random", "0", &ent->random );

 if ( ent->random >= ent->wait && ent->wait >= 0 ) {
  ent->random = ent->wait - FRAMETIME;
  G_Printf( "trigger_multiple has random >= wait\n" );
 }

 ent->touch = Touch_Multi;
 ent->use = Use_Multi;

 InitTrigger( ent );
 trap_LinkEntity (ent);
}
