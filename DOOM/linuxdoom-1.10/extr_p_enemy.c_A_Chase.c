
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int movedir; int angle; int flags; scalar_t__ movecount; TYPE_1__* info; TYPE_9__* target; scalar_t__ threshold; scalar_t__ reactiontime; } ;
typedef TYPE_2__ mobj_t ;
struct TYPE_15__ {scalar_t__ health; int flags; } ;
struct TYPE_13__ {scalar_t__ activesound; scalar_t__ missilestate; scalar_t__ meleestate; scalar_t__ attacksound; scalar_t__ spawnstate; } ;


 int ANG90 ;
 int MF_JUSTATTACKED ;
 int MF_SHOOTABLE ;
 scalar_t__ P_CheckMeleeRange (TYPE_2__*) ;
 int P_CheckMissileRange (TYPE_2__*) ;
 int P_CheckSight (TYPE_2__*,TYPE_9__*) ;
 scalar_t__ P_LookForPlayers (TYPE_2__*,int) ;
 int P_Move (TYPE_2__*) ;
 int P_NewChaseDir (TYPE_2__*) ;
 int P_Random () ;
 int P_SetMobjState (TYPE_2__*,scalar_t__) ;
 int S_StartSound (TYPE_2__*,scalar_t__) ;
 int fastparm ;
 scalar_t__ gameskill ;
 scalar_t__ netgame ;
 scalar_t__ sk_nightmare ;

void A_Chase (mobj_t* actor)
{
    int delta;

    if (actor->reactiontime)
 actor->reactiontime--;



    if (actor->threshold)
    {
 if (!actor->target
     || actor->target->health <= 0)
 {
     actor->threshold = 0;
 }
 else
     actor->threshold--;
    }


    if (actor->movedir < 8)
    {
 actor->angle &= (7<<29);
 delta = actor->angle - (actor->movedir << 29);

 if (delta > 0)
     actor->angle -= ANG90/2;
 else if (delta < 0)
     actor->angle += ANG90/2;
    }

    if (!actor->target
 || !(actor->target->flags&MF_SHOOTABLE))
    {

 if (P_LookForPlayers(actor,1))
     return;

 P_SetMobjState (actor, actor->info->spawnstate);
 return;
    }


    if (actor->flags & MF_JUSTATTACKED)
    {
 actor->flags &= ~MF_JUSTATTACKED;
 if (gameskill != sk_nightmare && !fastparm)
     P_NewChaseDir (actor);
 return;
    }


    if (actor->info->meleestate
 && P_CheckMeleeRange (actor))
    {
 if (actor->info->attacksound)
     S_StartSound (actor, actor->info->attacksound);

 P_SetMobjState (actor, actor->info->meleestate);
 return;
    }


    if (actor->info->missilestate)
    {
 if (gameskill < sk_nightmare
     && !fastparm && actor->movecount)
 {
     goto nomissile;
 }

 if (!P_CheckMissileRange (actor))
     goto nomissile;

 P_SetMobjState (actor, actor->info->missilestate);
 actor->flags |= MF_JUSTATTACKED;
 return;
    }


  nomissile:

    if (netgame
 && !actor->threshold
 && !P_CheckSight (actor, actor->target) )
    {
 if (P_LookForPlayers(actor,1))
     return;
    }


    if (--actor->movecount<0
 || !P_Move (actor))
    {
 P_NewChaseDir (actor);
    }


    if (actor->info->activesound
 && P_Random () < 3)
    {
 S_StartSound (actor, actor->info->activesound);
    }
}
