
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int angle; } ;
typedef TYPE_1__ mobj_t ;
typedef int boolean ;
typedef int angle_t ;


 int MISSILERANGE ;
 int P_LineAttack (TYPE_1__*,int,int ,int ,int) ;
 int P_Random () ;
 int bulletslope ;

void
P_GunShot
( mobj_t* mo,
  boolean accurate )
{
    angle_t angle;
    int damage;

    damage = 5*(P_Random ()%3+1);
    angle = mo->angle;

    if (!accurate)
 angle += (P_Random()-P_Random())<<18;

    P_LineAttack (mo, angle, MISSILERANGE, bulletslope, damage);
}
