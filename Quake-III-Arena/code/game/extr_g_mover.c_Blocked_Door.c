
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ eType; int origin; } ;
struct TYPE_16__ {int spawnflags; scalar_t__ damage; TYPE_2__ s; TYPE_1__* item; int client; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_14__ {scalar_t__ giType; } ;


 scalar_t__ ET_ITEM ;
 int EV_ITEM_POP ;
 int G_Damage (TYPE_3__*,TYPE_3__*,TYPE_3__*,int *,int *,scalar_t__,int ,int ) ;
 int G_FreeEntity (TYPE_3__*) ;
 int G_TempEntity (int ,int ) ;
 scalar_t__ IT_TEAM ;
 int MOD_CRUSH ;
 int Team_DroppedFlagThink (TYPE_3__*) ;
 int Use_BinaryMover (TYPE_3__*,TYPE_3__*,TYPE_3__*) ;

void Blocked_Door( gentity_t *ent, gentity_t *other ) {

 if ( !other->client ) {

  if( other->s.eType == ET_ITEM && other->item->giType == IT_TEAM ) {
   Team_DroppedFlagThink( other );
   return;
  }
  G_TempEntity( other->s.origin, EV_ITEM_POP );
  G_FreeEntity( other );
  return;
 }

 if ( ent->damage ) {
  G_Damage( other, ent, ent, ((void*)0), ((void*)0), ent->damage, 0, MOD_CRUSH );
 }
 if ( ent->spawnflags & 4 ) {
  return;
 }


 Use_BinaryMover( ent, ent, other );
}
