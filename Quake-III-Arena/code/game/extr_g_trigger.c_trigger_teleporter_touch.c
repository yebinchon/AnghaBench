
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int trace_t ;
struct TYPE_10__ {int angles; int origin; } ;
struct TYPE_14__ {int spawnflags; TYPE_1__ s; int target; TYPE_3__* client; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_13__ {scalar_t__ sessionTeam; } ;
struct TYPE_11__ {scalar_t__ pm_type; } ;
struct TYPE_12__ {TYPE_4__ sess; TYPE_2__ ps; } ;


 TYPE_5__* G_PickTarget (int ) ;
 int G_Printf (char*) ;
 scalar_t__ PM_DEAD ;
 scalar_t__ TEAM_SPECTATOR ;
 int TeleportPlayer (TYPE_5__*,int ,int ) ;

void trigger_teleporter_touch (gentity_t *self, gentity_t *other, trace_t *trace ) {
 gentity_t *dest;

 if ( !other->client ) {
  return;
 }
 if ( other->client->ps.pm_type == PM_DEAD ) {
  return;
 }

 if ( ( self->spawnflags & 1 ) &&
  other->client->sess.sessionTeam != TEAM_SPECTATOR ) {
  return;
 }


 dest = G_PickTarget( self->target );
 if (!dest) {
  G_Printf ("Couldn't find teleporter destination\n");
  return;
 }

 TeleportPlayer( other, dest->s.origin, dest->s.angles );
}
