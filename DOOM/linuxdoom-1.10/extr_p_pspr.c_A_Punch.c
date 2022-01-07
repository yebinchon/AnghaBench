
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int pspdef_t ;
struct TYPE_7__ {TYPE_3__* mo; scalar_t__* powers; } ;
typedef TYPE_1__ player_t ;
typedef int angle_t ;
struct TYPE_9__ {int angle; int y; int x; } ;
struct TYPE_8__ {int y; int x; } ;


 int MELEERANGE ;
 int P_AimLineAttack (TYPE_3__*,int,int ) ;
 int P_LineAttack (TYPE_3__*,int,int ,int,int) ;
 int P_Random () ;
 int R_PointToAngle2 (int ,int ,int ,int ) ;
 int S_StartSound (TYPE_3__*,int ) ;
 TYPE_2__* linetarget ;
 size_t pw_strength ;
 int sfx_punch ;

void
A_Punch
( player_t* player,
  pspdef_t* psp )
{
    angle_t angle;
    int damage;
    int slope;

    damage = (P_Random ()%10+1)<<1;

    if (player->powers[pw_strength])
 damage *= 10;

    angle = player->mo->angle;
    angle += (P_Random()-P_Random())<<18;
    slope = P_AimLineAttack (player->mo, angle, MELEERANGE);
    P_LineAttack (player->mo, angle, MELEERANGE, slope, damage);


    if (linetarget)
    {
 S_StartSound (player->mo, sfx_punch);
 player->mo->angle = R_PointToAngle2 (player->mo->x,
          player->mo->y,
          linetarget->x,
          linetarget->y);
    }
}
