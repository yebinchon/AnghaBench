
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int angle; int target; } ;
typedef TYPE_1__ mobj_t ;
typedef int angle_t ;
struct TYPE_6__ {int height; scalar_t__ z; int y; int x; } ;


 int ANG90 ;
 int FRACUNIT ;
 int MT_EXTRABFG ;
 int P_AimLineAttack (int ,int,int) ;
 int P_DamageMobj (TYPE_2__*,int ,int ,int) ;
 int P_Random () ;
 int P_SpawnMobj (int ,int ,scalar_t__,int ) ;
 TYPE_2__* linetarget ;

void A_BFGSpray (mobj_t* mo)
{
    int i;
    int j;
    int damage;
    angle_t an;


    for (i=0 ; i<40 ; i++)
    {
 an = mo->angle - ANG90/2 + ANG90/40*i;



 P_AimLineAttack (mo->target, an, 16*64*FRACUNIT);

 if (!linetarget)
     continue;

 P_SpawnMobj (linetarget->x,
       linetarget->y,
       linetarget->z + (linetarget->height>>2),
       MT_EXTRABFG);

 damage = 0;
 for (j=0;j<15;j++)
     damage += (P_Random()&7) + 1;

 P_DamageMobj (linetarget, mo->target,mo->target, damage);
    }
}
