
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int* vec3_t ;
struct TYPE_15__ {int* currentOrigin; } ;
struct TYPE_14__ {int clientNum; } ;
struct TYPE_18__ {TYPE_3__* client; TYPE_1__ r; TYPE_12__ s; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_16__ {scalar_t__ sessionTeam; } ;
struct TYPE_13__ {int* origin; int pm_time; int eFlags; int pm_flags; int velocity; } ;
struct TYPE_17__ {TYPE_2__ sess; TYPE_11__ ps; } ;


 int AngleVectors (int*,int ,int *,int *) ;
 int BG_PlayerStateToEntityState (TYPE_11__*,TYPE_12__*,int ) ;
 int EF_TELEPORT_BIT ;
 int EV_PLAYER_TELEPORT_IN ;
 int EV_PLAYER_TELEPORT_OUT ;
 int G_KillBox (TYPE_4__*) ;
 TYPE_4__* G_TempEntity (int*,int ) ;
 int PMF_TIME_KNOCKBACK ;
 int SetClientViewAngle (TYPE_4__*,int*) ;
 scalar_t__ TEAM_SPECTATOR ;
 int VectorCopy (int*,int*) ;
 int VectorScale (int ,int,int ) ;
 int qtrue ;
 int trap_LinkEntity (TYPE_4__*) ;
 int trap_UnlinkEntity (TYPE_4__*) ;

void TeleportPlayer( gentity_t *player, vec3_t origin, vec3_t angles ) {
 gentity_t *tent;



 if ( player->client->sess.sessionTeam != TEAM_SPECTATOR ) {
  tent = G_TempEntity( player->client->ps.origin, EV_PLAYER_TELEPORT_OUT );
  tent->s.clientNum = player->s.clientNum;

  tent = G_TempEntity( origin, EV_PLAYER_TELEPORT_IN );
  tent->s.clientNum = player->s.clientNum;
 }


 trap_UnlinkEntity (player);

 VectorCopy ( origin, player->client->ps.origin );
 player->client->ps.origin[2] += 1;


 AngleVectors( angles, player->client->ps.velocity, ((void*)0), ((void*)0) );
 VectorScale( player->client->ps.velocity, 400, player->client->ps.velocity );
 player->client->ps.pm_time = 160;
 player->client->ps.pm_flags |= PMF_TIME_KNOCKBACK;


 player->client->ps.eFlags ^= EF_TELEPORT_BIT;


 SetClientViewAngle( player, angles );


 if ( player->client->sess.sessionTeam != TEAM_SPECTATOR ) {
  G_KillBox (player);
 }


 BG_PlayerStateToEntityState( &player->client->ps, &player->s, qtrue );


 VectorCopy( player->client->ps.origin, player->r.currentOrigin );

 if ( player->client->sess.sessionTeam != TEAM_SPECTATOR ) {
  trap_LinkEntity (player);
 }
}
