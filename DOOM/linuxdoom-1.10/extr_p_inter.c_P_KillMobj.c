
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int mobjtype_t ;
struct TYPE_10__ {int flags; int type; int height; int tics; int y; int x; TYPE_1__* info; int health; TYPE_3__* player; } ;
typedef TYPE_2__ mobj_t ;
struct TYPE_11__ {int playerstate; int * frags; int killcount; } ;
struct TYPE_9__ {scalar_t__ deathstate; scalar_t__ xdeathstate; int spawnhealth; } ;


 int AM_Stop () ;
 int MF_CORPSE ;
 int MF_COUNTKILL ;
 int MF_DROPOFF ;
 int MF_DROPPED ;
 int MF_FLOAT ;
 int MF_NOGRAVITY ;
 int MF_SHOOTABLE ;
 int MF_SKULLFLY ;
 int MF_SOLID ;
 int MT_CHAINGUN ;

 int MT_CLIP ;

 int MT_SHOTGUN ;

 int MT_SKULL ;

 int ONFLOORZ ;
 int PST_DEAD ;
 int P_DropWeapon (TYPE_3__*) ;
 int P_Random () ;
 int P_SetMobjState (TYPE_2__*,scalar_t__) ;
 TYPE_2__* P_SpawnMobj (int ,int ,int ,int ) ;
 scalar_t__ automapactive ;
 size_t consoleplayer ;
 int netgame ;
 TYPE_3__* players ;

void
P_KillMobj
( mobj_t* source,
  mobj_t* target )
{
    mobjtype_t item;
    mobj_t* mo;

    target->flags &= ~(MF_SHOOTABLE|MF_FLOAT|MF_SKULLFLY);

    if (target->type != MT_SKULL)
 target->flags &= ~MF_NOGRAVITY;

    target->flags |= MF_CORPSE|MF_DROPOFF;
    target->height >>= 2;

    if (source && source->player)
    {

 if (target->flags & MF_COUNTKILL)
     source->player->killcount++;

 if (target->player)
     source->player->frags[target->player-players]++;
    }
    else if (!netgame && (target->flags & MF_COUNTKILL) )
    {


 players[0].killcount++;
    }

    if (target->player)
    {

 if (!source)
     target->player->frags[target->player-players]++;

 target->flags &= ~MF_SOLID;
 target->player->playerstate = PST_DEAD;
 P_DropWeapon (target->player);

 if (target->player == &players[consoleplayer]
     && automapactive)
 {


     AM_Stop ();
 }

    }

    if (target->health < -target->info->spawnhealth
 && target->info->xdeathstate)
    {
 P_SetMobjState (target, target->info->xdeathstate);
    }
    else
 P_SetMobjState (target, target->info->deathstate);
    target->tics -= P_Random()&3;

    if (target->tics < 1)
 target->tics = 1;







    switch (target->type)
    {
      case 128:
      case 130:
 item = MT_CLIP;
 break;

      case 129:
 item = MT_SHOTGUN;
 break;

      case 131:
 item = MT_CHAINGUN;
 break;

      default:
 return;
    }

    mo = P_SpawnMobj (target->x,target->y,ONFLOORZ, item);
    mo->flags |= MF_DROPPED;
}
