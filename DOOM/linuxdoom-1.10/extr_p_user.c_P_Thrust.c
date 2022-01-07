
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* mo; } ;
typedef TYPE_2__ player_t ;
typedef int fixed_t ;
typedef size_t angle_t ;
struct TYPE_4__ {int momy; int momx; } ;


 size_t ANGLETOFINESHIFT ;
 scalar_t__ FixedMul (int ,int ) ;
 int * finecosine ;
 int * finesine ;

void
P_Thrust
( player_t* player,
  angle_t angle,
  fixed_t move )
{
    angle >>= ANGLETOFINESHIFT;

    player->mo->momx += FixedMul(move,finecosine[angle]);
    player->mo->momy += FixedMul(move,finesine[angle]);
}
