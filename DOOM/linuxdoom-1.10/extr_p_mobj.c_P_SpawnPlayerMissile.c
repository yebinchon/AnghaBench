
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mobjtype_t ;
struct TYPE_9__ {int angle; TYPE_1__* info; void* momz; void* momy; void* momx; struct TYPE_9__* target; scalar_t__ z; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_2__ mobj_t ;
typedef scalar_t__ fixed_t ;
typedef int angle_t ;
struct TYPE_8__ {int speed; scalar_t__ seesound; } ;


 int ANGLETOFINESHIFT ;
 int FRACUNIT ;
 void* FixedMul (int ,scalar_t__) ;
 scalar_t__ P_AimLineAttack (TYPE_2__*,int,int) ;
 int P_CheckMissileSpawn (TYPE_2__*) ;
 TYPE_2__* P_SpawnMobj (scalar_t__,scalar_t__,scalar_t__,int ) ;
 int S_StartSound (TYPE_2__*,scalar_t__) ;
 scalar_t__* finecosine ;
 scalar_t__* finesine ;
 int linetarget ;

void
P_SpawnPlayerMissile
( mobj_t* source,
  mobjtype_t type )
{
    mobj_t* th;
    angle_t an;

    fixed_t x;
    fixed_t y;
    fixed_t z;
    fixed_t slope;


    an = source->angle;
    slope = P_AimLineAttack (source, an, 16*64*FRACUNIT);

    if (!linetarget)
    {
 an += 1<<26;
 slope = P_AimLineAttack (source, an, 16*64*FRACUNIT);

 if (!linetarget)
 {
     an -= 2<<26;
     slope = P_AimLineAttack (source, an, 16*64*FRACUNIT);
 }

 if (!linetarget)
 {
     an = source->angle;
     slope = 0;
 }
    }

    x = source->x;
    y = source->y;
    z = source->z + 4*8*FRACUNIT;

    th = P_SpawnMobj (x,y,z, type);

    if (th->info->seesound)
 S_StartSound (th, th->info->seesound);

    th->target = source;
    th->angle = an;
    th->momx = FixedMul( th->info->speed,
    finecosine[an>>ANGLETOFINESHIFT]);
    th->momy = FixedMul( th->info->speed,
    finesine[an>>ANGLETOFINESHIFT]);
    th->momz = FixedMul( th->info->speed, slope);

    P_CheckMissileSpawn (th);
}
