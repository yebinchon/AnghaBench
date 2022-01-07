
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int angle; } ;
typedef TYPE_1__ mobj_t ;
typedef int angle_t ;


 int FRACUNIT ;
 int P_AimLineAttack (TYPE_1__*,int,int) ;
 int bulletslope ;
 int linetarget ;

void P_BulletSlope (mobj_t* mo)
{
    angle_t an;


    an = mo->angle;
    bulletslope = P_AimLineAttack (mo, an, 16*64*FRACUNIT);

    if (!linetarget)
    {
 an += 1<<26;
 bulletslope = P_AimLineAttack (mo, an, 16*64*FRACUNIT);
 if (!linetarget)
 {
     an -= 2<<26;
     bulletslope = P_AimLineAttack (mo, an, 16*64*FRACUNIT);
 }
    }
}
