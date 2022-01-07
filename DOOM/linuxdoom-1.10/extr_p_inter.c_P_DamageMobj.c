
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ readyweapon; int cheats; int armortype; int armorpoints; scalar_t__ health; int damagecount; TYPE_5__* attacker; scalar_t__* powers; } ;
typedef TYPE_4__ player_t ;
struct TYPE_17__ {int flags; int health; int z; scalar_t__ type; TYPE_3__* info; int * state; scalar_t__ threshold; struct TYPE_17__* target; scalar_t__ reactiontime; TYPE_2__* subsector; scalar_t__ momy; scalar_t__ momx; int y; int x; TYPE_4__* player; scalar_t__ momz; } ;
typedef TYPE_5__ mobj_t ;
typedef int fixed_t ;
struct TYPE_15__ {int mass; int painchance; scalar_t__ painstate; size_t spawnstate; scalar_t__ seestate; } ;
struct TYPE_14__ {TYPE_1__* sector; } ;
struct TYPE_13__ {int special; } ;


 scalar_t__ ANG180 ;
 unsigned int ANGLETOFINESHIFT ;
 scalar_t__ BASETHRESHOLD ;
 int CF_GODMODE ;
 int FRACUNIT ;
 scalar_t__ FixedMul (int,int ) ;
 int I_Tactile (int,int,int) ;
 int MF_JUSTHIT ;
 int MF_NOCLIP ;
 int MF_SHOOTABLE ;
 int MF_SKULLFLY ;
 scalar_t__ MT_VILE ;
 int P_KillMobj (TYPE_5__*,TYPE_5__*) ;
 int P_Random () ;
 int P_SetMobjState (TYPE_5__*,scalar_t__) ;
 unsigned int R_PointToAngle2 (int ,int ,int ,int ) ;
 scalar_t__ S_NULL ;
 size_t consoleplayer ;
 int * finecosine ;
 int * finesine ;
 scalar_t__ gameskill ;
 TYPE_4__* players ;
 size_t pw_invulnerability ;
 scalar_t__ sk_baby ;
 int * states ;
 scalar_t__ wp_chainsaw ;

void
P_DamageMobj
( mobj_t* target,
  mobj_t* inflictor,
  mobj_t* source,
  int damage )
{
    unsigned ang;
    int saved;
    player_t* player;
    fixed_t thrust;
    int temp;

    if ( !(target->flags & MF_SHOOTABLE) )
 return;

    if (target->health <= 0)
 return;

    if ( target->flags & MF_SKULLFLY )
    {
 target->momx = target->momy = target->momz = 0;
    }

    player = target->player;
    if (player && gameskill == sk_baby)
 damage >>= 1;





    if (inflictor
 && !(target->flags & MF_NOCLIP)
 && (!source
     || !source->player
     || source->player->readyweapon != wp_chainsaw))
    {
 ang = R_PointToAngle2 ( inflictor->x,
    inflictor->y,
    target->x,
    target->y);

 thrust = damage*(FRACUNIT>>3)*100/target->info->mass;


 if ( damage < 40
      && damage > target->health
      && target->z - inflictor->z > 64*FRACUNIT
      && (P_Random ()&1) )
 {
     ang += ANG180;
     thrust *= 4;
 }

 ang >>= ANGLETOFINESHIFT;
 target->momx += FixedMul (thrust, finecosine[ang]);
 target->momy += FixedMul (thrust, finesine[ang]);
    }


    if (player)
    {

 if (target->subsector->sector->special == 11
     && damage >= target->health)
 {
     damage = target->health - 1;
 }




 if ( damage < 1000
      && ( (player->cheats&CF_GODMODE)
    || player->powers[pw_invulnerability] ) )
 {
     return;
 }

 if (player->armortype)
 {
     if (player->armortype == 1)
  saved = damage/3;
     else
  saved = damage/2;

     if (player->armorpoints <= saved)
     {

  saved = player->armorpoints;
  player->armortype = 0;
     }
     player->armorpoints -= saved;
     damage -= saved;
 }
 player->health -= damage;
 if (player->health < 0)
     player->health = 0;

 player->attacker = source;
 player->damagecount += damage;

 if (player->damagecount > 100)
     player->damagecount = 100;

 temp = damage < 100 ? damage : 100;

 if (player == &players[consoleplayer])
     I_Tactile (40,10,40+temp*2);
    }


    target->health -= damage;
    if (target->health <= 0)
    {
 P_KillMobj (source, target);
 return;
    }

    if ( (P_Random () < target->info->painchance)
  && !(target->flags&MF_SKULLFLY) )
    {
 target->flags |= MF_JUSTHIT;

 P_SetMobjState (target, target->info->painstate);
    }

    target->reactiontime = 0;

    if ( (!target->threshold || target->type == MT_VILE)
  && source && source != target
  && source->type != MT_VILE)
    {


 target->target = source;
 target->threshold = BASETHRESHOLD;
 if (target->state == &states[target->info->spawnstate]
     && target->info->seestate != S_NULL)
     P_SetMobjState (target, target->info->seestate);
    }

}
