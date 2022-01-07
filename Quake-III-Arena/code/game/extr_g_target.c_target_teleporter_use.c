
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int angles; int origin; } ;
struct TYPE_9__ {TYPE_1__ s; int target; int client; } ;
typedef TYPE_2__ gentity_t ;


 TYPE_2__* G_PickTarget (int ) ;
 int G_Printf (char*) ;
 int TeleportPlayer (TYPE_2__*,int ,int ) ;

void target_teleporter_use( gentity_t *self, gentity_t *other, gentity_t *activator ) {
 gentity_t *dest;

 if (!activator->client)
  return;
 dest = G_PickTarget( self->target );
 if (!dest) {
  G_Printf ("Couldn't find teleporter destination\n");
  return;
 }

 TeleportPlayer( activator, dest->s.origin, dest->s.angles );
}
