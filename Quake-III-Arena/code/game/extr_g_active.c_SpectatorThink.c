
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int buttons; } ;
typedef TYPE_4__ usercmd_t ;
struct TYPE_19__ {int tracemask; int pointcontents; int trace; TYPE_4__ cmd; TYPE_2__* ps; } ;
typedef TYPE_5__ pmove_t ;
typedef int pm ;
struct TYPE_17__ {int origin; } ;
struct TYPE_20__ {TYPE_3__ s; TYPE_7__* client; } ;
typedef TYPE_6__ gentity_t ;
struct TYPE_16__ {int speed; int origin; int pm_type; } ;
struct TYPE_15__ {scalar_t__ spectatorState; } ;
struct TYPE_21__ {int oldbuttons; int buttons; TYPE_2__ ps; TYPE_1__ sess; } ;
typedef TYPE_7__ gclient_t ;


 int BUTTON_ATTACK ;
 int CONTENTS_BODY ;
 int Cmd_FollowCycle_f (TYPE_6__*,int) ;
 int G_TouchTriggers (TYPE_6__*) ;
 int MASK_PLAYERSOLID ;
 int PM_SPECTATOR ;
 int Pmove (TYPE_5__*) ;
 scalar_t__ SPECTATOR_FOLLOW ;
 int VectorCopy (int ,int ) ;
 int memset (TYPE_5__*,int ,int) ;
 int trap_PointContents ;
 int trap_Trace ;
 int trap_UnlinkEntity (TYPE_6__*) ;

void SpectatorThink( gentity_t *ent, usercmd_t *ucmd ) {
 pmove_t pm;
 gclient_t *client;

 client = ent->client;

 if ( client->sess.spectatorState != SPECTATOR_FOLLOW ) {
  client->ps.pm_type = PM_SPECTATOR;
  client->ps.speed = 400;


  memset (&pm, 0, sizeof(pm));
  pm.ps = &client->ps;
  pm.cmd = *ucmd;
  pm.tracemask = MASK_PLAYERSOLID & ~CONTENTS_BODY;
  pm.trace = trap_Trace;
  pm.pointcontents = trap_PointContents;


  Pmove (&pm);

  VectorCopy( client->ps.origin, ent->s.origin );

  G_TouchTriggers( ent );
  trap_UnlinkEntity( ent );
 }

 client->oldbuttons = client->buttons;
 client->buttons = ucmd->buttons;


 if ( ( client->buttons & BUTTON_ATTACK ) && ! ( client->oldbuttons & BUTTON_ATTACK ) ) {
  Cmd_FollowCycle_f( ent, 1 );
 }
}
