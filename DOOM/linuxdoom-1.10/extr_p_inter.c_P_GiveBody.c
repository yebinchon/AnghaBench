
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ health; TYPE_1__* mo; } ;
typedef TYPE_2__ player_t ;
typedef int boolean ;
struct TYPE_4__ {scalar_t__ health; } ;


 scalar_t__ MAXHEALTH ;

boolean
P_GiveBody
( player_t* player,
  int num )
{
    if (player->health >= MAXHEALTH)
 return 0;

    player->health += num;
    if (player->health > MAXHEALTH)
 player->health = MAXHEALTH;
    player->mo->health = player->health;

    return 1;
}
