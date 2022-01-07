
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int sector_t ;
struct TYPE_9__ {scalar_t__ health; TYPE_7__* mo; } ;
typedef TYPE_2__ player_t ;
struct TYPE_10__ {int lastlook; scalar_t__ angle; TYPE_7__* target; scalar_t__ y; scalar_t__ x; TYPE_1__* subsector; } ;
typedef TYPE_3__ mobj_t ;
typedef scalar_t__ fixed_t ;
typedef int boolean ;
typedef scalar_t__ angle_t ;
struct TYPE_11__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_8__ {int * sector; } ;


 scalar_t__ ANG270 ;
 scalar_t__ ANG90 ;
 scalar_t__ MELEERANGE ;
 scalar_t__ P_AproxDistance (scalar_t__,scalar_t__) ;
 int P_CheckSight (TYPE_3__*,TYPE_7__*) ;
 scalar_t__ R_PointToAngle2 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int * playeringame ;
 TYPE_2__* players ;

boolean
P_LookForPlayers
( mobj_t* actor,
  boolean allaround )
{
    int c;
    int stop;
    player_t* player;
    sector_t* sector;
    angle_t an;
    fixed_t dist;

    sector = actor->subsector->sector;

    c = 0;
    stop = (actor->lastlook-1)&3;

    for ( ; ; actor->lastlook = (actor->lastlook+1)&3 )
    {
 if (!playeringame[actor->lastlook])
     continue;

 if (c++ == 2
     || actor->lastlook == stop)
 {

     return 0;
 }

 player = &players[actor->lastlook];

 if (player->health <= 0)
     continue;

 if (!P_CheckSight (actor, player->mo))
     continue;

 if (!allaround)
 {
     an = R_PointToAngle2 (actor->x,
      actor->y,
      player->mo->x,
      player->mo->y)
  - actor->angle;

     if (an > ANG90 && an < ANG270)
     {
  dist = P_AproxDistance (player->mo->x - actor->x,
     player->mo->y - actor->y);

  if (dist > MELEERANGE)
      continue;
     }
 }

 actor->target = player->mo;
 return 1;
    }

    return 0;
}
