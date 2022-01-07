
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int flags; scalar_t__ type; TYPE_3__* info; struct TYPE_14__* target; TYPE_2__* subsector; scalar_t__ threshold; } ;
typedef TYPE_4__ mobj_t ;
struct TYPE_13__ {int seesound; int seestate; } ;
struct TYPE_12__ {TYPE_1__* sector; } ;
struct TYPE_11__ {TYPE_4__* soundtarget; } ;


 int MF_AMBUSH ;
 int MF_SHOOTABLE ;
 scalar_t__ MT_CYBORG ;
 scalar_t__ MT_SPIDER ;
 scalar_t__ P_CheckSight (TYPE_4__*,TYPE_4__*) ;
 int P_LookForPlayers (TYPE_4__*,int) ;
 int P_Random () ;
 int P_SetMobjState (TYPE_4__*,int ) ;
 int S_StartSound (TYPE_4__*,int) ;






void A_Look (mobj_t* actor)
{
    mobj_t* targ;

    actor->threshold = 0;
    targ = actor->subsector->sector->soundtarget;

    if (targ
 && (targ->flags & MF_SHOOTABLE) )
    {
 actor->target = targ;

 if ( actor->flags & MF_AMBUSH )
 {
     if (P_CheckSight (actor, actor->target))
  goto seeyou;
 }
 else
     goto seeyou;
    }


    if (!P_LookForPlayers (actor, 0) )
 return;


  seeyou:
    if (actor->info->seesound)
    {
 int sound;

 switch (actor->info->seesound)
 {
   case 130:
   case 129:
   case 128:
     sound = 130 +P_Random()%3;
     break;

   case 132:
   case 131:
     sound = 132 +P_Random()%2;
     break;

   default:
     sound = actor->info->seesound;
     break;
 }

 if (actor->type==MT_SPIDER
     || actor->type == MT_CYBORG)
 {

     S_StartSound (((void*)0), sound);
 }
 else
     S_StartSound (actor, sound);
    }

    P_SetMobjState (actor, actor->info->seestate);
}
