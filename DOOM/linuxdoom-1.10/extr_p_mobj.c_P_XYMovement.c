
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ forwardmove; scalar_t__ sidemove; } ;
struct TYPE_20__ {int cheats; TYPE_7__* mo; TYPE_5__ cmd; } ;
typedef TYPE_6__ player_t ;
struct TYPE_21__ {int momx; int momy; int flags; int momz; int x; int y; scalar_t__ z; scalar_t__ floorz; scalar_t__ state; TYPE_4__* subsector; TYPE_6__* player; TYPE_1__* info; } ;
typedef TYPE_7__ mobj_t ;
typedef int fixed_t ;
struct TYPE_22__ {TYPE_2__* backsector; } ;
struct TYPE_18__ {TYPE_3__* sector; } ;
struct TYPE_17__ {scalar_t__ floorheight; } ;
struct TYPE_16__ {scalar_t__ ceilingpic; } ;
struct TYPE_15__ {int spawnstate; } ;


 int CF_NOMOMENTUM ;
 int FRACUNIT ;
 int FRICTION ;
 void* FixedMul (int,int ) ;
 int MAXMOVE ;
 int MF_CORPSE ;
 int MF_MISSILE ;
 int MF_SKULLFLY ;
 int P_ExplodeMissile (TYPE_7__*) ;
 int P_RemoveMobj (TYPE_7__*) ;
 int P_SetMobjState (TYPE_7__*,int ) ;
 int P_SlideMove (TYPE_7__*) ;
 int P_TryMove (TYPE_7__*,int,int) ;
 int STOPSPEED ;
 int S_PLAY ;
 scalar_t__ S_PLAY_RUN1 ;
 TYPE_8__* ceilingline ;
 scalar_t__ skyflatnum ;
 scalar_t__ states ;

void P_XYMovement (mobj_t* mo)
{
    fixed_t ptryx;
    fixed_t ptryy;
    player_t* player;
    fixed_t xmove;
    fixed_t ymove;

    if (!mo->momx && !mo->momy)
    {
 if (mo->flags & MF_SKULLFLY)
 {

     mo->flags &= ~MF_SKULLFLY;
     mo->momx = mo->momy = mo->momz = 0;

     P_SetMobjState (mo, mo->info->spawnstate);
 }
 return;
    }

    player = mo->player;

    if (mo->momx > MAXMOVE)
 mo->momx = MAXMOVE;
    else if (mo->momx < -MAXMOVE)
 mo->momx = -MAXMOVE;

    if (mo->momy > MAXMOVE)
 mo->momy = MAXMOVE;
    else if (mo->momy < -MAXMOVE)
 mo->momy = -MAXMOVE;

    xmove = mo->momx;
    ymove = mo->momy;

    do
    {
 if (xmove > MAXMOVE/2 || ymove > MAXMOVE/2)
 {
     ptryx = mo->x + xmove/2;
     ptryy = mo->y + ymove/2;
     xmove >>= 1;
     ymove >>= 1;
 }
 else
 {
     ptryx = mo->x + xmove;
     ptryy = mo->y + ymove;
     xmove = ymove = 0;
 }

 if (!P_TryMove (mo, ptryx, ptryy))
 {

     if (mo->player)
     {
  P_SlideMove (mo);
     }
     else if (mo->flags & MF_MISSILE)
     {

  if (ceilingline &&
      ceilingline->backsector &&
      ceilingline->backsector->ceilingpic == skyflatnum)
  {



      P_RemoveMobj (mo);
      return;
  }
  P_ExplodeMissile (mo);
     }
     else
  mo->momx = mo->momy = 0;
 }
    } while (xmove || ymove);


    if (player && player->cheats & CF_NOMOMENTUM)
    {

 mo->momx = mo->momy = 0;
 return;
    }

    if (mo->flags & (MF_MISSILE | MF_SKULLFLY) )
 return;

    if (mo->z > mo->floorz)
 return;

    if (mo->flags & MF_CORPSE)
    {


 if (mo->momx > FRACUNIT/4
     || mo->momx < -FRACUNIT/4
     || mo->momy > FRACUNIT/4
     || mo->momy < -FRACUNIT/4)
 {
     if (mo->floorz != mo->subsector->sector->floorheight)
  return;
 }
    }

    if (mo->momx > -STOPSPEED
 && mo->momx < STOPSPEED
 && mo->momy > -STOPSPEED
 && mo->momy < STOPSPEED
 && (!player
     || (player->cmd.forwardmove== 0
  && player->cmd.sidemove == 0 ) ) )
    {

 if ( player&&(unsigned)((player->mo->state - states)- S_PLAY_RUN1) < 4)
     P_SetMobjState (player->mo, S_PLAY);

 mo->momx = 0;
 mo->momy = 0;
    }
    else
    {
 mo->momx = FixedMul (mo->momx, FRICTION);
 mo->momy = FixedMul (mo->momy, FRICTION);
    }
}
