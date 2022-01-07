
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pspdef_t ;
struct TYPE_7__ {TYPE_3__* mo; } ;
typedef TYPE_1__ player_t ;
typedef int angle_t ;
struct TYPE_9__ {int angle; int flags; int y; int x; } ;
struct TYPE_8__ {int y; int x; } ;


 int ANG180 ;
 int ANG90 ;
 scalar_t__ MELEERANGE ;
 int MF_JUSTATTACKED ;
 int P_AimLineAttack (TYPE_3__*,int,scalar_t__) ;
 int P_LineAttack (TYPE_3__*,int,scalar_t__,int,int) ;
 int P_Random () ;
 int R_PointToAngle2 (int ,int ,int ,int ) ;
 int S_StartSound (TYPE_3__*,int ) ;
 TYPE_2__* linetarget ;
 int sfx_sawful ;
 int sfx_sawhit ;

void
A_Saw
( player_t* player,
  pspdef_t* psp )
{
    angle_t angle;
    int damage;
    int slope;

    damage = 2*(P_Random ()%10+1);
    angle = player->mo->angle;
    angle += (P_Random()-P_Random())<<18;


    slope = P_AimLineAttack (player->mo, angle, MELEERANGE+1);
    P_LineAttack (player->mo, angle, MELEERANGE+1, slope, damage);

    if (!linetarget)
    {
 S_StartSound (player->mo, sfx_sawful);
 return;
    }
    S_StartSound (player->mo, sfx_sawhit);


    angle = R_PointToAngle2 (player->mo->x, player->mo->y,
        linetarget->x, linetarget->y);
    if (angle - player->mo->angle > ANG180)
    {
 if (angle - player->mo->angle < -ANG90/20)
     player->mo->angle = angle + ANG90/21;
 else
     player->mo->angle -= ANG90/20;
    }
    else
    {
 if (angle - player->mo->angle > ANG90/20)
     player->mo->angle = angle - ANG90/21;
 else
     player->mo->angle += ANG90/20;
    }
    player->mo->flags |= MF_JUSTATTACKED;
}
