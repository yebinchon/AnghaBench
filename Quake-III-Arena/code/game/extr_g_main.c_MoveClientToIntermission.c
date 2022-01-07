
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ contents; } ;
struct TYPE_13__ {scalar_t__ event; scalar_t__ loopSound; scalar_t__ modelindex; int eType; scalar_t__ eFlags; int origin; } ;
struct TYPE_15__ {TYPE_5__ r; TYPE_4__ s; TYPE_3__* client; } ;
typedef TYPE_6__ gentity_t ;
struct TYPE_16__ {int intermission_angle; int intermission_origin; } ;
struct TYPE_11__ {scalar_t__ eFlags; int powerups; int pm_type; int viewangles; int origin; } ;
struct TYPE_10__ {scalar_t__ spectatorState; } ;
struct TYPE_12__ {TYPE_2__ ps; TYPE_1__ sess; } ;


 int ET_GENERAL ;
 int PM_INTERMISSION ;
 scalar_t__ SPECTATOR_FOLLOW ;
 int StopFollowing (TYPE_6__*) ;
 int VectorCopy (int ,int ) ;
 TYPE_7__ level ;
 int memset (int ,int ,int) ;

void MoveClientToIntermission( gentity_t *ent ) {

 if ( ent->client->sess.spectatorState == SPECTATOR_FOLLOW ) {
  StopFollowing( ent );
 }



 VectorCopy( level.intermission_origin, ent->s.origin );
 VectorCopy( level.intermission_origin, ent->client->ps.origin );
 VectorCopy (level.intermission_angle, ent->client->ps.viewangles);
 ent->client->ps.pm_type = PM_INTERMISSION;


 memset( ent->client->ps.powerups, 0, sizeof(ent->client->ps.powerups) );

 ent->client->ps.eFlags = 0;
 ent->s.eFlags = 0;
 ent->s.eType = ET_GENERAL;
 ent->s.modelindex = 0;
 ent->s.loopSound = 0;
 ent->s.event = 0;
 ent->r.contents = 0;
}
