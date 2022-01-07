
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int spawnflags; int (* use ) (TYPE_3__*,TYPE_3__*,TYPE_3__*) ;int target; TYPE_1__* client; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_14__ {scalar_t__ sessionTeam; } ;
struct TYPE_13__ {TYPE_2__ sess; } ;


 TYPE_3__* G_PickTarget (int ) ;
 int G_UseTargets (TYPE_3__*,TYPE_3__*) ;
 scalar_t__ TEAM_BLUE ;
 scalar_t__ TEAM_RED ;
 int stub1 (TYPE_3__*,TYPE_3__*,TYPE_3__*) ;

void target_relay_use (gentity_t *self, gentity_t *other, gentity_t *activator) {
 if ( ( self->spawnflags & 1 ) && activator->client
  && activator->client->sess.sessionTeam != TEAM_RED ) {
  return;
 }
 if ( ( self->spawnflags & 2 ) && activator->client
  && activator->client->sess.sessionTeam != TEAM_BLUE ) {
  return;
 }
 if ( self->spawnflags & 4 ) {
  gentity_t *ent;

  ent = G_PickTarget( self->target );
  if ( ent && ent->use ) {
   ent->use( ent, self, activator );
  }
  return;
 }
 G_UseTargets (self, activator);
}
